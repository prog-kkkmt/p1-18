knownWords = set()
text = set()
for i in range(int(input())):
    knownWords.add(input().lower())
for i in range(int(input())):
    line = input().split()
    for word in line:
        text.add(word.lower())

print(knownWords)
print(text)
d = text.difference(knownWords)
for word in d:
    print(word)
