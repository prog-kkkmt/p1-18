'''
Класс OrderedDict() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-ordereddict-modulja-collections/
'''

from collections import OrderedDict

#   Функция OrderedDict() модуля collections возвращает экземпляр подкласса dict,
#   у которого есть методы, специализированные для изменения порядка словаря.
#   Упорядоченные словари похожи на обычные словари, но имеют некоторые дополнительные возможности,
#   связанные с операциями упорядочивания. Теперь они стали менее важными, когда встроенный класс dict
#   получил возможность запоминать порядок вставки (это новое поведение стало гарантированным в Python 3.7).

d = OrderedDict.fromkeys('Hello, world!')
d.move_to_end('H')
print(''.join(d.keys()))    #   elo, wrd!H

d.move_to_end('H', last=False)

print(''.join(d.keys()))    #   Helo, wrd!

d.popitem(last=True)

print(''.join(d.keys()))    #   Helo, wrd
