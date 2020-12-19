'''
Класс позволяет создавать котов, у них есть метод "мяу", и метод просмотра информации о созданном коте.
'''
class Cat:
    def __init__(self, age, color, gender, name):
        self.age = age
        self.color = color
        self.gender = gender
        self.name = name

    def meow(self):
        print(self.name, "Meow!")

    def info(self):
        print("Age: ", self.age)
        print("Color: ", self.color)
        print("Gender: ", self.gender)