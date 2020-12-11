import file
import importlib

file.p = 42
print(file.p)
file = importlib.reload(file) # Загружает обновленный модуль
print(file.p)
