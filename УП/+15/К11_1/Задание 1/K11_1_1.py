#Выполнили: Герасимов Дмитрий, Груздев Роман
#Группа: П1-18
'''
К11_1. Техника работы со словарями

Задание 1. https://pythontutor.ru/lessons/dicts/problems/occurency_index/
Задача «Номер появления слова»
Условие. В единственной строке записан текст. Для каждого слова из данного текста 
подсчитайте, сколько раз оно встречалось в этом тексте ранее.
Словом считается последовательность непробельных символов идущих подряд, слова разделены 
одним или большим числом пробелов или символами конца строки.
'''

d = dict()
i = 0
for key in input().split():
    d[key] =  d.get(key, 0) + 1
    print(d[key] - 1, end = ' ')
print()
