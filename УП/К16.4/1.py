class Student:
   def __init__(self):
       self.__university = 'RTU MIREA'
       self.__name = ''
       self.__surname = ''
       self.__marks = list()
   def set_name(self, name: str):
       self.__name = name
   def set_surname(self, surname: str):
       self.__surname = surname
   def set_marks(self, marks: list):
       self.__marks = marks
   def set_university(self, university: str):
       self.__university = university
   def get(self):
       return self.__name, self.__surname, self.__university, self.__marks
 
