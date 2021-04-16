 '''
Задание 1. Придумать собственный класс
Задание 2. Неформально описать функционал класса
Задание 3. Реализовать класс в модуле
Задание 4. Разработать скрипт для демонстрации работы с классом (импортировать модуль,
создать экземпляры, вызвать методы)
'''
class RGB:
    Red = Green = Blue = 0	#	объявление и инициализация.

    def __init__(self, r, g, b):	#	конструктор класса .
#	got vars for filling Red, Green and Blue params of Color .
            RGB.Red, RGB.Green, RGB.Blue = r, g, b

def getParams(self):	#	function getParams, returns   #	dict.
        d = {
            'Red: ': RGB.Red,
            'Green: ': RGB.Green,
            'Blue: ': RGB.Blue
        }

        return d

Color = RGB(int(input()), int(input()), int(input()))	# atribute

print(Color.getParams())	#	вызов метода класса				 #	RGB(getParams())
 

