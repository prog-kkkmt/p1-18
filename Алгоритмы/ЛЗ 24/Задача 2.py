set_words = set()
n = int(input())
for i in range(n):
    string = input().split()
    for i in range(len(string)):
        set_words.add(string[i])
        
print((len(set_words)))
