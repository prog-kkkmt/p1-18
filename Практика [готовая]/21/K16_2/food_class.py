# Выполнил Курбанмухаммедов Стив
# Группа П1-18
'''
УП.01 Учебная практика по модулю ПМ.01
Консультация 16. Техника работы с классами.
16-2. МГОТУ ККМТ, П1-18, П2-18

Примеры работы с классами в Python
https://pythonru.com/primery/primery-raboty-s-klassami-v-python

Задание 1. Создание классов
Задание 2. Создание экземпляров класса
Задание 3. Доступ к атрибутам
Задание 4. Встроенные атрибуты класса
Задание 5. Уничтожение объектов (сбор мусора)
'''
class Food():
    def __init__(self, name, gram, cal):
        self.name = name # переменная экземпляра
        self.gram = gram # переменная экземпляра
        self.cal = cal # переменная экземпляра

    def eat_it(self):
        print("Ты съел", self.name, "в нем", self.cal, "калорий, на", self.gram, "грамм.") # атрибут класса

def out():
    print(id(food1), id(food2), id(food3))

food1 = Food('Chips', 100, 510) # экземпляр класса
food2 = Food('Beans', 100, 71) # экземпляр класса
food3 = Food('Fried meat', 100, 233) # экземпляр класса

food1.eat_it()
food2.eat_it()
food3.eat_it()

print("Food doc:", Food.__doc__) # встроенные атрибуты класса
print("Food name:", Food.__name__) # встроенные атрибуты класса
print("Food module:", Food.__module__) # встроенные атрибуты класса

out()
del food1
del food2
del food3
print("Deleted.")

