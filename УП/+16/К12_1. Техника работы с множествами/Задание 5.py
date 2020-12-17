languages = set()
n = int(input())
nc = 0
knows_all_langth = True
for i in range(n):
    m = int(input())
    if (m == 1 and nc < 1):
        string = input()
        print(1)
        knows_all_langth = False
        nc += 1
        print(string)
    else:
        for c_langth in range(m):
            string = input()
            languages.add(string)

if knows_all_langth:
    print(len(languages))
    languages = sorted(languages)
    for i in languages:
        print(i)
print(len(languages))
languages = sorted(languages)
for i in languages:
    print(i)