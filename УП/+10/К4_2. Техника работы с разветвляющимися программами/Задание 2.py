def work_with_list():
    #lst = list(map(int, input().split()))
    print("1. append")
    print("2. extend")
    print("3. insert")
    print("4. remove")
    print("5. pop")
    print("6. index")
    print("7. count")
    print("8. sort")
    print("9. reverse")
    print("10. copy")
    print("11. clear")
    print("exit")
    while (1):
        com = input()
        if com == "1":
            print("list.append(x)")
            print("Добавляет элемент в конец списка")
        elif com == "2":
            print("list.extend(L)")
            print("Расширяет список a, добавляя в конец все элементы списка b")
        elif com == "3":
            print("list.insert(i, x)")
            print("Вставляет на i-ый элемент значение x")
        elif com == "4":
            print("list.remove(x)")
            print("Удаляет первый элемент в списке, имеющий значение x. ValueError, если такого элемента не существует")
        elif com == "5":
            print("list.pop([i])")
            print("Удаляет i-ый элемент и возвращает его. Если индекс не указан, удаляется последний элемент")
        elif com == "6":
            print("list.index(x, [start [, end]])")
            print("Возвращает положение первого элемента со значением x (при этом поиск ведется от start до end)")
        elif com == "7":
            print("list.count(x)")
            print("Возвращает количество элементов со значением x")
        elif com == "8":
            print("list.sort([key=функция])")
            print("Сортирует список на основе функции")
        elif com == "9":
            print("list.reverse()")
            print("Разворачивает список")
        elif com == "10":
            print("list.copy()")
            print("Поверхностная копия списка")
        elif com == "11":
            print("list.clear()")
            print("Очищает список")
        elif com == "exit":
            main()

def work_with_dict():
    #d = {}
    print("1. clear")
    print("2. copy")
    print("3. fromkeys")
    print("4. get")
    print("5. items")
    print("6. keys")
    print("7. pop")
    print("8. popitem")
    print("9. setdefault")
    print("10. update")
    print("11. values")
    print("exit")
    while (1):
        com = input()
        if com == "1":
            print("dict.clear()")
            print("Очищает словарь.")
        elif com == "2":
            print("dict.copy()")
            print("Возвращает копию словаря.")
        elif com == "3":
            print("classmethod dict.fromkeys(seq[, value])")
            print("Создает словарь с ключами из seq и значением value (по умолчанию None).")
        elif com == "4":
            print("dict.get(key[, default])")
            print("Возвращает значение ключа, но если его нет, не бросает исключение, а возвращает default (по умолчанию None).")
        elif com == "5":
            print("dict.items()")
            print("Возвращает пары (ключ, значение).")
        elif com == "6":
            print("dict.keys()")
            print("Возвращает ключи в словаре.")
        elif com == "7":
            print("dict.pop(key[, default])")
            print("Удаляет ключ и возвращает значение. Если ключа нет, возвращает default (по умолчанию бросает исключение).")
        elif com == "8":
            print("dict.popitem()")
            print("Удаляет и возвращает пару (ключ, значение). Если словарь пуст, бросает исключение KeyError. Помните, что словари неупорядочены.")
        elif com == "9":
            print("dict.setdefault(key[, default])")
            print("Возвращает значение ключа, но если его нет, не бросает исключение, а создает ключ с значением default (по умолчанию None).")
        elif com == "10":
            print("dict.update([other])")
            print("Обновляет словарь, добавляя пары (ключ, значение) из other. Существующие ключи перезаписываются. Возвращает None (не новый словарь!).")
        elif com == "11":
            print("dict.values()")
            print("Возвращает значения в словаре.")
        elif com == "exit":
            main()

def work_with_set():
    #a = set()
    print("1. update")
    print("2. intersection_update")
    print("3. difference_update")
    print("4. symmetric_difference_update")
    print("5. add")
    print("6. remove")
    print("7. discard")
    print("8. pop")
    print("9. clear")
    print("10. copy")
    print("exit")
    while (1):
        com = input()
        if com == "1":
            print("set.update(other, ...); set |= other | ...")
            print("Объединение")
        elif com == "2":
            print("set.intersection_update(other, ...); set &= other & ... ")
            print("Пересечение")
        elif com == "3":
            print("set.difference_update(other, ...); set -= other | ...")
            print("Вычитание")
        elif com == "4":
            print("set.symmetric_difference_update(other); set ^= other ")
            print("Множество из элементов, встречающихся в одном множестве, но не встречающиеся в обоих")
        elif com == "5":
            print("set.add(elem)")
            print("Добавляет элемент в множество.")
        elif com == "6":
            print("set.remove(elem)")
            print("Удаляет элемент из множества. KeyError, если такого элемента не существует")
        elif com == "7":
            print("set.discard(elem)")
            print("Удаляет элемент, если он находится в множестве")
        elif com == "8":
            print("set.pop()")
            print("Удаляет первый элемент из множества. Так как множества не упорядочены, нельзя точно сказать, какой элемент будет первым.")
        elif com == "9":
            print("set.clear()")
            print("Очистка множества")
        elif com == "10":
            print("set.copy() ")
            print("Копия множества")
        elif com == "exit":
            main()

def main():
    print("1. list")
    print("2. dict")
    print("3. set")
    com = input('Enter your choice: ')
    if com == "1":
        work_with_list()
    elif com == "2":
        work_with_dict()
    elif com == "3":
        work_with_set()



if __name__ == "__main__":
    main()