'''
Добавим функцию, которая выводит приветствие, и выполним ее:
Привет, меня зовут Василий

'''
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def  myfunc(self):
        print("Привет, меня зовут "  + self.name)
        
p1 = Person("Василий", 36)
p1.myfunc()

