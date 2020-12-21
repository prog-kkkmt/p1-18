'''
Задание 3. https://pythontutor.ru/lessons/dicts/problems/most_frequent_word/
Задача «Самое частое слово»
Условие. Дан текст: в первой строке задано число строк, далее идут сами строки. 
Выведите слово, которое в этом тексте встречается чаще всего. Если таких слов несколько, 
выведите то, которое меньше в лексикографическом порядке.
'''

tdict = list()
for i in range( int(input()) ):
    word = input().split()
    for C in word:
        tdict.append(C)

D = dict()
for k in tdict:
    D[k] = D.get(k, 0) + 1

maxi = max(D.values())
for K, Val in sorted(D.items()):
    if (Val == maxi):
        print(K)
        break
