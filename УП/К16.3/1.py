'''
Задание 1. Наследование класса.
Задание 2. Переопределение методов.
Задание 3. Популярные базовые методы.
Задание 4. Приватные методы и атрибуты класса.
'''

#Для начала создадим вспомогательный класс Point для хранения координат на плоскости:
class Point:
    def __init__(self, x = 0, y = 0):
        self.x = x
        self.y = y
#И после него объявим класс для работы с графическим примитивом линией:
class Line:
    def __init__(self, sp:Point, ep:Point, color:str = "red", width:int = 1):
        self._sp = sp
        self._ep = ep
        self._color = color
        self._width = width
 
    def drawLine(self):
        print(f"Рисование линии: {self._sp}, {self._ep}, {self._color}, {self._width}")
