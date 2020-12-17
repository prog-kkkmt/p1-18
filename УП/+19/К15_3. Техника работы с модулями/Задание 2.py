import sys
import os

if sys.platform.startswith('linux'):
    print("This is linux {0}".format(os.name))
else:
    print("This is not linux. This is {0}".format(os.name))
    print(sys.getwindowsversion())

