print("Задание 1")
class Class_Wolf:
    count_wolf = 0
    def __init__(self, age):
        self.name = "Wolf"
        self.color = "grey"
        self.age = age
        self.rem_atr = "Нужно удалить"
        Class_Wolf.count_wolf += 1
    def holw():
        print("WOOOOOOOOOOOOOOOOOO!!!")
    def how_much_wolf(self):
        print("Воет {0} волк(ов)".format(Class_Wolf.count_wolf))

wolf = Class_Wolf(10)

print("\nЗадание 3")
Class_Wolf.holw()
wolf.how_much_wolf()
print("Вывод скоько воют волков не через функцию класса %d" % Class_Wolf.count_wolf)

print(hasattr(wolf, "rem_atr"))
delattr(wolf, "rem_atr")
print(hasattr(wolf, "rem_atr"))

atr = input()
print("Этот атрибут %s существует" %atr)
print("Значение отребута: %s", getattr(wolf, atr))
setattr(wolf, atr, 10)
print(getattr(wolf, atr))

print("\nЗадание 4")

print("doc: ", Class_Wolf.__doc__)
print("name: ", Class_Wolf.__name__)
print("module: ", Class_Wolf.__module__)
print("bases: ", Class_Wolf.__bases__)
print("dict: ", Class_Wolf.__dict__)

print("\nЗадание 5")

wolf1 = Class_Wolf(10)
wolf2 = wolf1
wolf3 = wolf1
print(id(wolf1), id(wolf2), id(wolf3))
del wolf
del wolf1
del wolf2
del wolf3
try:
    print(id(wolf1), id(wolf2), id(wolf3))
except NameError:
    print("Удаление экземпляров прошло успешно")
