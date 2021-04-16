'''
https://pythontutor.ru/lessons/dicts/problems/occurency_index/
Задача «Номер появления слова»
Условие. В единственной строке записан текст. Для каждого слова из данного текста
подсчитайте, сколько раз оно встречалось в этом тексте ранее.
Словом считается последовательность непробельных символов идущих подряд, слова разделены
одним или большим числом пробелов или символами конца строки.

New year New year yeeah!
'''
s = input()
s = s.split(' ')
print(*s)
d = {

}
for i in range(len(s)):
    rem = s[i]
    d[i] = s[i]
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
    count = 0
