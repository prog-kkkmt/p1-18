import sys
import os

if sys.platform.startswith('linux'):
    print(f"This is linux {os.name}")
else:
    print(f"This is not linux. This is {os.name}")
    print(sys.getwindowsversion())

