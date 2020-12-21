'''
Задание 1. Создание класса
Задание 2. Создание объекта
Задание 3. Функция init
Задание 4. Методы объектов
Задание 5. Параметр self
Задание 6. Изменение свойств объекта
Задание 7. Удалить свойства объекта
Задание 8. Удаление объектов
'''

# Задание 1. Создание класса
class TestClass:
        x = 20
# Задание 2. Создание объекта
p = TestClass()
print(p.x)
#Задание 3. Функция init
class DataHero:
        # Задание 5. Параметр self
        def __init__(self, name, rank):
                self.name = name
                self.rank = rank
                self.STR = self.rank//4 + 10
                self.DEX = self.rank//4 + 10
                self.INT = self.rank//4 + 10
                self.HP = self.rank//4 + 10
                self.Health = self.HP*self.DEX*10
                self.MP = self.INT*10
        # Задание 4. Методы объектов
        def Enter(self):
                print("Hi Hero! what are you doing?")
        def DataHero(date):
                print(f"++++++++++++++++++++++ ")
                print(f"Name: {date.name}")
                print(f"Level: {date.rank}")
                print(f"Health: {date.HP}")
                print(f"Mana: {date.MP}")
                print(f"++++++++++++++++++++++ ")
                print()
        def UnderDataHero(date):
                print(f"++++++++++++++++++++++ ")
                print(f"STR: {date.STR}")
                print(f"DEX: {date.DEX}")
                print(f"INT: {date.INT}")
                print(f"HP: {date.HP}")
                print(f"++++++++++++++++++++++ ")
                print()

hero1 = DataHero("Hagemanto", 20)

hero1.DataHero()
hero1.UnderDataHero()

# Задание 6. Изменение свойств объекта
hero1.Enter()
hero1.rank = 99960
hero1 = DataHero(hero1.name,hero1.rank)
hero1.DataHero()
hero1.UnderDataHero()
# Задание 7. Удалить свойства объекта
del hero1.MP
# Задание 8. Удаление объектов
del hero1
