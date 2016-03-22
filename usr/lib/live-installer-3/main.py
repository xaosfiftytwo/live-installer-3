#! /usr/bin/python3 -OO

import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk, GObject

import sys
sys.path.insert(1, '/usr/lib/live-installer-3')
from gtk_interface import InstallerWindow
from utils import getoutput
from dialogs import ErrorDialog
import argparse


# Handle arguments
parser = argparse.ArgumentParser(description="Live Installer")
parser.add_argument('-o', '--oem', action="store_true", help='Start as OEM user.')
args, extra = parser.parse_known_args()
oem = args.oem


# install can be parsed as a boot parameter
install = "install" in getoutput("cat /proc/cmdline")


def uncaught_excepthook(*args):
    sys.__excepthook__(*args)
    if __debug__:
        from pprint import pprint
        from types import BuiltinFunctionType, ClassType, ModuleType, TypeType
        tb = sys.last_traceback
        while tb.tb_next: tb = tb.tb_next
        print(('\nDumping locals() ...'))
        pprint({k:v for k,v in tb.tb_frame.f_locals.items()
                    if not k.startswith('_') and
                       not isinstance(v, (BuiltinFunctionType,
                                          ClassType, ModuleType, TypeType))})
        if sys.stdin.isatty() and (sys.stdout.isatty() or sys.stderr.isatty()):
            can_debug = False
            try:
                import ipdb as pdb  # try to import the IPython debugger
                can_debug = True
            except ImportError:
                try:
                    import pdb as pdb
                    can_debug = True
                except ImportError:
                    pass

            if can_debug:
                print(('\nStarting interactive debug prompt ...'))
                pdb.pm()
    else:
        import traceback
        details = '\n'.join(traceback.format_exception(*args)).replace('<', '').replace('>', '')
        title = 'Unexpected error'
        msg = 'The installer has failed with the following unexpected error. Please submit a bug report!'
        ErrorDialog(title, "<b>%s</b>" % msg, "<tt>%s</tt>" % details, None, True, 'live-installer-3')

    sys.exit(1)

sys.excepthook = uncaught_excepthook


# main entry
if __name__ == "__main__":
    # Create an instance of our GTK application
    try:
        # Calling GObject.threads_init() is not needed for PyGObject 3.10.2+
        # Check with print (sys.version)
        # Debian Jessie: 3.4.2
        GObject.threads_init()

        fs = False
        if install or oem:
            fs = True
        InstallerWindow(fullscreen=fs)
        Gtk.main()
    except KeyboardInterrupt:
        pass
