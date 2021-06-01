"""
Задание 3. https://pythontutor.ru/lessons/dicts/problems/most_frequent_word/
Задача «Самое частое слово»
Условие. Дан текст: в первой строке задано число строк, далее идут сами строки.
Выведите слово, которое в этом тексте встречается чаще всего. Если таких слов несколько,
выведите то, которое меньше в лексикографическом порядке.
"""

dictt = {}
max = 0
for _ in range(int(input())):
    for word in input().split():
        if word in dictt:
            dictt[word] += 1
        else:
            dictt[word] = 1
        if  dictt[word] > max:
            max = dictt[word]

for key, value in sorted(dictt.items()):
    if value == max:
        print(key)
        break