import sqlite3

DBconnect = sqlite3.connect('DBsus.db')
DBcursor = DBconnect.cursor()

def print_table(name):
    print('                    '+name)
    table = DBcursor.execute('SELECT * FROM '+name+';')
    for x in list(map(lambda x: x[0], DBcursor.description)):
        print("%23s" % x, end='')
    print()
    for x in table:
        for y in x:
            print("%23s" % y, end='')
        print()

print_table('manufacturers')
print_table('repair_categories')
print_table('repairs')
print_table('types_of_appliances')

t = DBcursor.execute('SELECT * FROM repairs WHERE date_of_execution IS NULL ;').fetchone()
print(t)



