import sys
import time

stdin = sys.stdin
try:
    sys.stdin = open("text.txt", "r")
    s = input()
    print("odna stroka: ", s)
finally:
    sys.stdin.close()
    sys.stdin = stdin

try:
    sys.stdin = open("text.txt", "r")
    for i in sys.stdin:#s = input()
        print(i, end="")
finally:
    sys.stdin.close()
    sys.stdin = stdin
