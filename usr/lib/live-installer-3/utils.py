#! /usr/bin/python3

import subprocess
import urllib.request
import urllib.error
import re
import threading
import os
import fnmatch
import apt
import apt_pkg


def shell_exec_popen(command, kwargs={}):
    print(("Executing: %s" % command))
    #return subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, **kwargs)
    return subprocess.Popen(command, shell=True, bufsize=0, stdout=subprocess.PIPE, universal_newlines=True, **kwargs)


def shell_exec(command, logger=None):
    if logger is not None:
        logger.write(command, "utils.shell_exec")
    else:
        print(("Executing: %s" % command))
    return subprocess.call(command, shell=True)


def getoutput(command, always_as_list=False, logger=None):
    #return shell_exec(command).stdout.read().strip()
    try:
        if logger is not None:
            logger.write(command, "utils.getoutput")
        else:
            print(("Executing: %s" % command))
        output = subprocess.check_output(command, shell=True).decode('utf-8').strip().split('\n')
        if logger is not None:
            for line in output:
                logger.write(line, "utils.getoutput")
    except Exception as detail:
        if logger is not None:
            logger.write(detail, "utils.getoutput")
        else:
            print((detail))
        # Even if an error occurs, don't crash here
        output = ['']
    if len(output) == 1 and not always_as_list:
        # Single line: return as string
        output = output[0]
    return output


def chroot_exec(command, target):
    command = command.replace('"', "'").strip()  # FIXME
    return shell_exec('chroot %s/ /bin/sh -c "%s"' % (target, command))


def memoize(func):
    """ Caches expensive function calls.

    Use as:

        c = Cache(lambda arg: function_to_call_if_yet_uncached(arg))
        c('some_arg')  # returns evaluated result
        c('some_arg')  # returns *same* (non-evaluated) result

    or as a decorator:

        @memoize
        def some_expensive_function(args [, ...]):
            [...]

    See also: http://en.wikipedia.org/wiki/Memoization
    """
    class memodict(dict):
        def __call__(self, *args):
            return self[args]

        def __missing__(self, key):
            ret = self[key] = func(*key)
            return ret
    return memodict()


def get_config_dict(file, key_value=re.compile(r'^\s*(\w+)\s*=\s*["\']?(.*?)["\']?\s*(#.*)?$')):
    """Returns POSIX config file (key=value, no sections) as dict.
    Assumptions: no multiline values, no value contains '#'. """
    d = {}
    with open(file) as f:
        for line in f:
            try:
                key, value, _ = key_value.match(line).groups()
            except AttributeError:
                continue
            d[key] = value
    return d


# Check for internet connection
def hasInternetConnection(testUrl='http://google.com'):
    try:
        urllib.request.urlopen(testUrl, timeout=1)
        return True
    except urllib.error.URLError:
        pass
    return False


# Check if is 64-bit system
def isAmd64():
    machine = getoutput("uname -m")[0]
    if machine == "x86_64":
        return True
    return False


# Check for backports
def has_backports():
    try:
        bp = getoutput("grep backports /etc/apt/sources.list | grep -v ^#")[0]
    except:
        bp = ''
    if bp.strip() == "":
        try:
            bp = getoutput("grep backports /etc/apt/sources.list.d/*.list | grep -v ^#")[0]
        except:
            bp = ''
    if bp.strip() != "":
        return True
    return False


def getPackageVersion(package, candidate=False):
    cmd = "env LANG=C bash -c 'apt-cache policy %s | grep \"Installed:\"'" % package
    if candidate:
        cmd = "env LANG=C bash -c 'apt-cache policy %s | grep \"Candidate:\"'" % package
    lst = getoutput(cmd)[0].strip().split(' ')
    version = lst[-1]
    if 'none' in version:
        version = ''
    return version


# Check for internet connection
def has_internet(testUrl='http://google.com'):
    try:
        urllib.request.urlopen(testUrl, timeout=1)
        return True
    except urllib.error.URLError:
        pass
    return False


# Check if running in VB
def in_virtualbox():
    dmiBIOSVersion = getoutput("dmidecode -t0 | grep 'Version:' | awk -F ': ' '{print $2}'")
    dmiSystemProduct = getoutput("dmidecode -t1 | grep 'Product Name:' | awk -F ': ' '{print $2}'")
    dmiBoardProduct = getoutput("dmidecode -t2 | grep 'Product Name:' | awk -F ': ' '{print $2}'")
    if dmiBIOSVersion != "VirtualBox" and dmiSystemProduct != "VirtualBox" and dmiBoardProduct != "VirtualBox":
        return False
    return True


# Check if is 64-bit system
def is_amd64():
    machine = getoutput("uname -m")
    if machine == "x86_64":
        return True
    return False


def get_boot_parameters():
    parms = []
    not_allowed = 'live,ram,single,ignore,config,components,memtest,iso,noprompt,noeject,noswap,BOOT_IMAGE,root'.split(',')
    cmd = "cat /proc/cmdline"
    ret = getoutput(cmd).split(" ")
    for line in ret:
        if len(line) > 2:
            add = True
            for s in not_allowed:
                if s in line:
                    add = False
                    break
            if add:
                parms.append(line)
    return parms


def select_combobox_value(combobox, value, valueColNr=0):
    i = 0
    activeIndex = -1
    liststore = combobox.get_model()
    for data in liststore:
        if data[valueColNr] == value:
            activeIndex = i
            break
        i += 1
    if combobox.get_has_entry():
        combobox.set_entry_text_column(valueColNr)
        if activeIndex < 0:
            entry = combobox.get_child()
            entry.set_text(value)
    else:
        if activeIndex < 0:
            activeIndex = 0
    combobox.set_active(activeIndex)


def get_combox_value(combobox):
    value = None
    if combobox.get_has_entry():
        entry = combobox.get_child()
        value = entry.get_text().strip()
    else:
        model = combobox.get_model()
        value = model.get_value(combobox.get_active_iter(), 0)
    return value


def filter_text(widget, allowed_chars_regexp='0-9'):
    def filter(entry, *args):
        text = entry.get_text().strip().lower()
        entry.set_text(re.sub("[^%s]" % allowed_chars_regexp, '', text))
        #entry.set_text(''.join([i for i in text if i in allowed_characters_string]))
    widget.connect('changed', filter)


# Taken from: http://stackoverflow.com/questions/2532053/validate-a-hostname-string
def is_valid_hostname(hostname):
    if len(hostname) > 255:
        return False
    if hostname[-1] == ".":
        hostname = hostname[:-1]  # strip exactly one dot from the right, if present
    allowed = re.compile("(?!-)[A-Z\d-]{1,63}(?<!-)$", re.IGNORECASE)
    return all(allowed.match(x) for x in hostname.split("."))


def get_files_from_dir(directory, pattern=''):
    if pattern == '':
        pattern = '*'
    found_files = []
    if os.path.exists(directory):
        for root, dirs, files in os.walk(directory):
            for f in fnmatch.filter(files, pattern):
                found_files.append(os.path.join(root, f))
    return found_files


# Check if package exists
def doesPackageExist(package):
    return package in apt.Cache()


# Check if a package is installed
def isPackageInstalled(packageName, alsoCheckVersion=True):
    isInstalled = False
    try:
        cache = apt.Cache()
        pkg = cache[packageName]
        if (not pkg.is_installed or
            pkg._pkg.current_state != apt_pkg.CURSTATE_INSTALLED or
            cache._depcache.broken_count > 0):
            isInstalled = False
        elif alsoCheckVersion:
            if pkg.installed.version == pkg.candidate.version:
                isInstalled = True
        else:
            isInstalled = True
    except:
        pass
    return isInstalled


# Check for string in file
def hasStringInFile(searchString, filePath):
    if os.path.exists(filePath):
        with open(filePath) as f:
            for line in f:
                if re.search("{0}".format(searchString), line):
                    return True
    return False


# Check if the machine has a battery
def has_power_supply():
    out = getoutput("ls /sys/class/power_supply | grep BAT", True)
    if out[0] != "":
        return True
    return False


# Comment or uncomment a line with given pattern in a file
def comment_line(file_path, pattern, comment=True):
    if os.path.exists(file_path):
        pattern = pattern.replace("/", "\/")
        cmd = "sed -i '{p}/s/^/#/' {f}".format(p=pattern, f=file_path)
        if not comment:
            cmd = "sed -i '/^#.*{p}/s/^#//' {f}".format(p=pattern, f=file_path)
        shell_exec(cmd)


# Class to run commands in a thread and return the output in a queue
class ExecuteThreadedCommands(threading.Thread):

    def __init__(self, commandList, theQueue=None, returnOutput=False):
        super(ExecuteThreadedCommands, self).__init__()
        self.commands = commandList
        self.queue = theQueue
        self.returnOutput = returnOutput

    def run(self):
        if isinstance(self.commands, (list, tuple)):
            for cmd in self.commands:
                self.exec_cmd(cmd)
        else:
            self.exec_cmd(self.commands)

    def exec_cmd(self, cmd):
        if self.returnOutput:
            ret = getoutput(cmd)
        else:
            ret = shell_exec(cmd)
        if self.queue is not None:
            self.queue.put(ret)


# Run passed function in a thread
# Example usage
# def someOtherFunc(data, key):
#    print "someOtherFunc was called : data=%s; key=%s" % (str(data), str(key))
# t1 = FuncThread(someOtherFunc, [1,2], 6)
# t1.start()
# t1.join()
class FuncThread(threading.Thread):
    def __init__(self, target, *args):
        super(FuncThread, self).__init__()
        self._target = target
        self._args = args

    def run(self):
        self._target(*self._args)
