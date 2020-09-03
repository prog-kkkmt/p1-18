string = input()
lst = []
for i in range(26):
    lst.append(0)

for i in range(len(string)):
    index = ord(string[i]) - ord('a')
    lst[index] += 1

for i in range(26):
    print(chr(97 + i), ":" ,lst[i], end=" ")
