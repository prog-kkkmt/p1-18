#Задание 1
print("Задание 1")
class Parant:
    a = 10
    def set_attr(self, attr):
        Parant.a = attr ** 2
    def parent_method(self):
        print("Вызов метода родителя")
    def get_attr(self):
        print("attr: ", Parant.a)
    def power(self, x, y):
        print(x * y)
    def method(self):
        print("HELLO")

class Child(Parant):
    def child_method(self):
        print("Вызов метода класса наследника")
    def power(self, x, y):
        print(x ** y)
    def method(self):
        print("HELLO")

c = Child()
c.child_method()
c.parent_method()
c.set_attr(4)
c.get_attr()

#Задание 2
print("\nЗадание 2")
class Parant:
    a = 10
    def power(self, x, y): #Задание 2
        print(x * y)
    def method(self): #Задание 2
        print("HELLO")

class Child(Parant):
    def power(self, x, y): #Задание 2
        print(x ** y)
    def method(self): #Задание 2
        print("HELLO")

c.power(10, 4)
c.method()

#Задание 3
print("\nЗадание 3")
class ClassName:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __str__(self):
        return "Vector ({0}, {1})".format(self.x, self.y)

    def __mul__(self, other):
        return ClassName(self.x * other.x, self.y * other.y)

v1 = ClassName(3, 10)
v2 = ClassName(5, 5)
print(v1 * v2)

#Задание 4
print("\nЗадание 4")
class Counter:
    sec_count = 0
    x = 2
    def print_power(self):
        self.x *= 2
        print(self.x)
    def count(self):
        self.sec_count -= 1
        print(self.sec_count)

coun = Counter()
coun.count()
coun.count()
print(coun.sec_count)

coun.print_power()
coun.print_power()
print(coun.x)