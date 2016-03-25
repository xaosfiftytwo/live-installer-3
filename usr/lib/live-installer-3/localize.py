#! /usr/bin/python3

import os
import re
from utils import chroot_exec, get_config_dict, shell_exec, \
                  doesPackageExist, isPackageInstalled


CONFIG_FILE = '/etc/live-installer-3/live-installer-3.conf'


class Localize():
    def __init__(self, setup, target_dir):
        self.setup = setup
        self.language = setup.language
        self.username = setup.username
        self.target_dir = target_dir
        self.locale = self.language.lower().split("_")
        self.scriptDir = os.path.dirname(os.path.realpath(__file__))
        self.edition = 'all'
        config = get_config_dict(CONFIG_FILE)
        self.info = config.get('info', '/etc/linuxmint/info')
        if os.path.exists(self.info):
            config = get_config_dict(self.info)
            self.edition = config.get('EDITION', 'all').replace(' ', '').lower()

    def set_progress_hook(self, progresshook):
        ''' Set a callback to be called on progress updates '''
        ''' i.e. def my_callback(progress_type, message, current_progress, total) '''
        ''' Where progress_type is any off PROGRESS_START, PROGRESS_UPDATE, PROGRESS_COMPLETE, PROGRESS_ERROR '''
        self.update_progress = progresshook

    def start(self):
        self.applications()
        self.languageSpecific()

    def languageSpecific(self):
        localizeConf = os.path.join(self.scriptDir, "localize/%s" % self.language)
        if os.path.exists(localizeConf):
            try:
                print((" --> Localizing %s" % self.edition))
                config = get_config_dict(localizeConf)
                packages = config.get(self.edition, '').strip()
                if packages != "":
                    self.update_progress(message=_("Install additional localized packages"))
                    self.exec_cmd("apt-get --yes --force-yes install %s" % packages)
            except Exception as detail:
                msg = "ERROR: %s" % detail
                print(msg)
                self.update_progress(message=msg)

    def applications(self):
        if self.language != "en_US":
            # Localize KDE
            if isPackageInstalled("kde-runtime"):
                print(" --> Localizing KDE")
                self.update_progress(message=_("Localizing KDE"))
                package = self.get_localized_package("kde-l10n")
                if package != "":
                    self.exec_cmd("apt-get install --yes --force-yes %s" % package)

            # Localize LibreOffice
            if isPackageInstalled("libreoffice"):
                print(" --> Localizing LibreOffice")
                self.update_progress(message=_("Localizing LibreOffice"))
                package = self.get_localized_package("libreoffice-l10n")
                if package != "":
                    self.exec_cmd("apt-get install --yes --force-yes %s" % package)
                package = self.get_localized_package("libreoffice-help")
                if package != "":
                    self.exec_cmd("apt-get install --yes --force-yes %s" % package)
                package = self.get_localized_package("myspell")
                if package != "":
                    self.exec_cmd("apt-get install --yes --force-yes %s" % package)

            # Localize AbiWord
            if isPackageInstalled("abiword"):
                print(" --> Localizing AbiWord")
                self.update_progress(message=_("Localizing AbiWord"))
                package = self.get_localized_package("aspell")
                if package != "":
                    self.exec_cmd("apt-get install --yes --force-yes %s" % package)

            # Localize Firefox
            ff = "firefox"
            isESR = isPackageInstalled("firefox-esr")
            if isESR:
                ff = "firefox-esr"
            if isESR or isPackageInstalled("firefox"):
                esr = ""
                if isESR:
                    esr = "esr-"
                print(" --> Localizing Firefox")
                self.update_progress(message=_("Localizing Firefox"))
                package = self.get_localized_package("firefox-%sl10n" % esr)
                if package != "":
                    self.exec_cmd("apt-get install --yes --force-yes %s %s" % (ff, package))
                    self.localizePref("%s/home/%s/.mozilla/firefox/mwad0hks.default/prefs.js" % (self.target_dir, self.username))

            # Localize Thunderbird
            if isPackageInstalled("thunderbird"):
                print(" --> Localizing Thunderbird")
                self.update_progress(message=_("Localizing Thunderbird"))
                package = self.get_localized_package("thunderbird-l10n")
                if package != "":
                    self.exec_cmd("apt-get install --yes --force-yes %s" % package)
                    self.localizePref("%s/home/%s/.thunderbird/pjzwmea6.default/prefs.js" % (self.target_dir, self.username))

    def get_localized_package(self, package):
        lan = "".join(self.locale)
        pck = "{}-{}".format(package, lan)
        if not doesPackageExist(pck):
            lan = "-".join(self.locale)
            pck = "{}-{}".format(package, lan)
            if not doesPackageExist(pck):
                lan = self.locale[0]
                pck = "{}-{}".format(package, lan)
                if not doesPackageExist(pck):
                    pck = ''
        return pck

    def localizePref(self, prefsPath):
        if os.path.exists(prefsPath):
            with open(prefsPath, 'r') as f:
                text = f.read()

            # Create language strings for Mozilla
            lan = self.locale[0]
            if self.locale[0] != self.locale[1]:
                lan = "_".join(self.locale)

            # Set Mozilla parameters in prefs file
            mozLine = "user_pref(\"spellchecker.dictionary\", \"%s\");" % lan
            text = self.searchAndReplace(text, ".*spellchecker\.dictionary.*", mozLine, mozLine)

            mozLine = "user_pref(\"general.useragent.locale\", \"%s\");" % lan
            text = self.searchAndReplace(text, ".*general\.useragent\.locale.*", mozLine, mozLine)

            with open(prefsPath, 'w') as f:
                f.write(text)

    def searchAndReplace(self, text, regexpSearch, replaceWithString, appendString=None):
        matchObj = re.search(regexpSearch, text)
        if matchObj:
            text = re.sub(regexpSearch, replaceWithString, text)
        else:
            if appendString is not None:
                text += "\n%s" % appendString
        return text

    def exec_cmd(self, command):
        if self.setup.oem_setup:
            shell_exec(command)
        else:
            chroot_exec(command, self.setup.target_dir)
