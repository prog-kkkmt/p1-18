# Задание 1. https://stepik.org/lesson/3380/step/3?unit=963
# Простейшая система проверки орфографии может быть основана на использовании списка известных слов. 
# Если введённое слово не найдено в этом списке, оно помечается как "ошибка". 
# Попробуем написать подобную систему.
# На вход программе первой строкой передаётся количество d известных нам слов, после чего 
# на d строках указываются эти слова. 
# Затем передаётся количество l строк текста для проверки, после чего l строк текста.
# Выведите уникальные "ошибки" в произвольном порядке. Работу производите без учёта регистра.

# Sample Input:
# 4
# champions
# we
# are
# Stepik
# 3
# We are the champignons
# We Are The Champions
# Stepic

# Sample Output:
# stepic
# champignons
# the

words = set()
d = int(input('d: '))
for _ in range(d):
    words.add(input().lower())

text_words = list()
l = int(input('l: '))
for _ in range(l):
    text_words.extend(input().lower().split())

print('\nOutput:')
print(*(set(text_words)-words), sep='\n')