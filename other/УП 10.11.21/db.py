import sqlite3
from random import randint

db = sqlite3.connect('dbhye.db')
sql = db.cursor()

sql.execute("""CREATE TABLE if NOT EXISTS users (
    login TEXT,
    password TEXT,
    cash BIGINT    
)""")
db.commit()

def reg():
    user_login = input('Login: ')
    user_password = input('Password: ') 
    user_cash = input('Введите денег: ')


    sql.execute("SELECT login FROM users WHERE login = '{user_login}'")
    if sql.fetchone() is None:
        sql.execute(f"INSERT INTO users VALUES (?, ?, ?)", (user_login, user_password, user_cash))
        db.commit()
        print('Зарегестрированно.')
    else:
        print('Такая запись уже имеется !')

def delete():
    sql.execute(f"DELETE FROM users WHERE login = '{user_login}'")
    db.commit()
    
    print('Вас удaлили')
    
def joucasino():
    global user_login
    user_login = input('Login: ')
    number = randint(1, 2)

    for i in sql.execute(f'SELECT cash FROM users WHERE login = "{user_login}"'):
        apach = i[0]

    sql.execute(f'SELECT login FROM users WHERE login = "{user_login}"')
    if sql.fetchone() is None:
        print('Такого логина не существует')
        reg()
    else:
        if number == 2:
            sql.execute(f'UPDATE users SET cash = {1000 + apach} WHERE login = "{user_login}"')
            db.commit()
            print('Хoрошее')
        else:
            print('Оффай с позором')
            delete()

def enter():
    for i in sql.execute('SELECT login, cash FROM users'):
        print(i)

def main():
    joucasino()
    enter()

main()
