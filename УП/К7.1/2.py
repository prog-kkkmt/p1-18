'''
Задача №2.
Известно, что для логина часто не разрешается использовать строки содержащие пробелы.
Но пользователю нашего сервиса особенно понравилась какая-то строка.
Замените пробелы в строке на символы нижнего подчеркивания, чтобы строка
могла сгодиться для логина. Если строка состоит из одного слова, менять ничего не нужно.
'''

s = input()
s = s.replace(' ', '_')
print(s)
