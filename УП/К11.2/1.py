a = {}
while True:
    s = input().split()
    if s[0] == '.':
        break
    if len(s) == 2:
        a[s[0]] = s[1]
    if len(s) == 1 :
        print(a[s[0]])
