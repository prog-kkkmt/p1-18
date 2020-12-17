import sys

print(len(sys.argv))
print(sys.argv[1])

for i in range(len(sys.argv)):
    print(sys.argv[i], end=" ")

w = None
print(len(sys.argv))
if len(sys.argv) > 1:
    if sys.argv[1] in ("-h", "-help"):
        print("Manual")
        word = 0
else:
    word = sys.argv[0]
