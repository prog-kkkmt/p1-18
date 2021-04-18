import sys

if sys.platform.startswith('linux'):
    # специфические операции для linux
    ...
elif sys.platform.startswith('win32'):
    ver = sys.getwindowsversion();
    print(ver.major) # для меня: 10
    # специфические операции для windows
    ...
