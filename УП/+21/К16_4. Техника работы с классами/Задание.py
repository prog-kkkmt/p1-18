import modul

#Задание 4
rect = modul.ClassSize(17, 28)
print(rect.width)

#Задание 1
class MyClass:
    def __init__(self, cont):
        self.cont = cont
    def __truediv__(self, other): # Деление с остатком
        line = "-" * len(other.cont)
        return "\n".join([self.cont, line, other.cont])

spam = MyClass("spam")
string = MyClass("hello!")
print(spam / string)

#Задание 2
class ClassHi:
    countHello = 0
    def __init__(self, name):
        self.name = name
        ClassHi.countHello += 1
    def printHi(self):
        print("Hello " + self.name)
    def printCount(self):
        print(ClassHi.countHello)

sq = ClassHi("Peter")
sq.printHi()
sq.printCount()
