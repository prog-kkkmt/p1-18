options = int(input("Choose from Menu:\n"
             "list: 1.\n"
             "dict: 2.\n"
             "set:  3.\n"))

listMethods = ['list.append(x)	Добавляет элемент в конец списка\n',
'list.extend(L)	Расширяет список list, добавляя в конец все элементы списка L\n',
'list.insert(i, x)	Вставляет на i-ый элемент значение x\n',
'list.remove(x)	Удаляет первый элемент в списке, имеющий значение x. ValueError, если такого элемента не существует\n'
'list.pop([i])	Удаляет i-ый элемент и возвращает его. Если индекс не указан, удаляется последний элемент\n'
'list.index(x, [start [, end]])	Возвращает положение первого элемента со значением x (при этом поиск ведется от start до end)\n'
'list.count(x)	Возвращает количество элементов со значением x\n']

dictMethods = ['dict.clear() - очищает словарь.\n',
'dict.copy() - возвращает копию словаря.\n',
'classmethod dict.fromkeys(seq[, value]) - создает словарь с ключами из seq и значением value (по умолчанию None).\n',
'dict.get(key[, default]) - возвращает значение ключа, но если его нет, не бросает исключение, а возвращает default (по умолчанию None).\n',
'dict.items() - возвращает пары (ключ, значение).\n',]

setMethods = ['len(s) - число элементов в множестве (размер множества).\n',
'x in s - принадлежит ли x множеству s.\n',
'set.isdisjoint(other) - истина, если set и other не имеют общих элементов.\n',
'set == other - все элементы set принадлежат other, все элементы other принадлежат set.\n',
'set.update(other, ...); set |= other | ... - объединение.\n',
'set.intersection_update(other, ...); set &= other & ... - пересечение.\n',
'set.difference_update(other, ...); set -= other | ... - вычитание.\n',
'set.symmetric_difference_update(other); set ^= other - множество из элементов, встречающихся в одном множестве, но не встречающиеся в обоих.\n',
'set.add(elem) - добавляет элемент в множество.\n',
'set.remove(elem) - удаляет элемент из множества. KeyError, если такого элемента не существует.\n',
'set.discard(elem) - удаляет элемент, если он находится в множестве.\n',
'set.pop() - удаляет первый элемент из множества. Так как множества не упорядочены, нельзя точно сказать, какой элемент будет первым.\n',
'set.clear() - очистка множества.\n']

menuList = [listMethods, dictMethods, setMethods]

print(*menuList[options - 1])
