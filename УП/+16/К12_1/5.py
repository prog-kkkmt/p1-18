n = int(input())
s = set()
students = []
for i in range(n):
    k = int(input())
    tmp = set()
    for i in range(k):
        language = input()
        s.add(language)
        tmp.add(language)
    students.append(tmp)

allKnownLanguages = students[0]
for student in students[1:]:
    allKnownLanguages = allKnownLanguages.intersection(student)

print(len(allKnownLanguages))
for language in sorted(allKnownLanguages):
    print(language)
print(len(s))
for language in sorted(s):
    print(language)
