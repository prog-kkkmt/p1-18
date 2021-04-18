from collections import OrderedDict

# Упорядоченный вывод таблицы Хаффмана(при использовании обычного словаря
# порядок элементов случайный)

h_table = [('a', '01'), ('b', '10'), ('c', '11'), ('d', '101')]
d = OrderedDict()
for k,v in h_table:
    d.update({k:v})

#Упорядоченный вывод
for elem in d:
    print(elem + ': ', d[elem])

# При декодировании удобнее использовать словарь
# Например: for c in s: print(d[c])
