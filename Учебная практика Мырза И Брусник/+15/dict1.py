'''
https://pythontutor.ru/lessons/dicts/problems/occurency_index/
Задача «Номер появления слова»
Условие. В единственной строке записан текст. Для каждого слова из данного текста
подсчитайте, сколько раз оно встречалось в этом тексте ранее.
Словом считается последовательность непробельных символов идущих подряд, слова разделены
одним или большим числом пробелов или символами конца строки.

New year New year yeeah!
'''

#d = dict.fromkeys(str(x) for x in input().split())

s = str(input())
s = s.split(' ')
print(*s)
# count = 1
d = {

}
for i in range(len(s)):
    rem = s[i]
    # for j in range(i + 1, len(s)):
    #     if s[j] == rem:
    #         count += 1
    d[i] = s[i]
    #print(rem, ': ', count)
    #count = 0

print(d)
list = []
for i in range(len(d)):
    count = 1
    for j in range(i + 1, len(d)):
        if d[i] == d[j] and d[i] != 'None':
            count += 1
            d[j] = 'None'
    if count > 0 and d[i] != 'None':
        print(s[i], ': ', count)
        # list.append(count)
    count = 0

