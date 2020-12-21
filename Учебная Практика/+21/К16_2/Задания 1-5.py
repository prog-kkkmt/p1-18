'''
Задание 1. Создание классов
Задание 2. Создание экземпляров класса
Задание 3. Доступ к атрибутам
Задание 4. Встроенные атрибуты класса
Задание 5. Уничтожение объектов (сбор мусора)
'''

#1. Создание классов
class DataHero:
        objcount = 0
        def __init__(self, name, rank):
                self.name = name
                self.rank = rank
                DataHero.objcount += 1
                self.STR = self.rank//4 + 10
                self.DEX = self.rank//4 + 10
                self.INT = self.rank//4 + 10
                self.HP = self.rank//4 + 10
                self.Health = self.HP*self.DEX*10
                self.MP = self.INT*10
        #Методы класса
        #Количество объектов класса
        def ObjCount(self):
                print(f"Count objects: {DataHero.objcount}")
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

#2. Создание экземпляров класса
hero1 = DataHero("Hagemanto", 25)	#Лысый плащ
hero2 = DataHero("Oni_Saibōgu", 19)     #Генос

print(hero1.__doc__)
print(DataHero.__doc__)

#3. Доступ к атрибутам
hero1.Enter()
hero1.DataHero()

print(f"Count create hero: {DataHero.objcount}")

hero1.age = 9999
hero1.DataHero()

del hero2.rank
del hero2
print()

#4. Встроенные атрибуты класса
print("doc: ", DataHero.__doc__)
print("name: ", DataHero.__name__)
print("module: ", DataHero.__module__)
print("bases: ", DataHero.__bases__)
print("dict: ", DataHero.__dict__)

#5. Уничтожение объектов (сбор мусора)
hero3 = DataHero("musor",1)
del hero3

