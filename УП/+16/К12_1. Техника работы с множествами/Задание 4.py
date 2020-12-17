"""
Задача «Количество слов в тексте»
Условие. Дан текст: в первой строке записано число строк, далее идут сами строки. 
Определите, сколько различных слов содержится в этом тексте.
Словом считается последовательность непробельных символов идущих подряд, слова разделены 
одним или большим числом пробелов или символами конца строки.
"""

def fillSetWords(string, set_words):
    start_index = 0
    for i in range(len(string)):
        if (string[i] == ' '):
            end_index = i
            set_words.add(string[start_index:end_index])
            start_index = i + 1

set_words = set()
n = int(input())
for i in range(n):
    string = input().split()
    for i in range(len(string)):
        set_words.add(string[i])
#print(set_words)
print((len(set_words)))
