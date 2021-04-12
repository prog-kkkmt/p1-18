from tkinter import *

window = Tk()
window.title("Тестирование")
window.geometry('400x250')

def check_answer():
    if number_answer == var.get():
        print("Правильно")
    elif number_answer == var.get():
        print("Правильно")
    elif number_answer == var.get():
        print("Правильно")
    else:
        print("Ошибка")
        
var = IntVar()
with open('set_questions.txt', 'r') as file:
    question = file.readline()
    answer1 = file.readline()
    answer2 = file.readline()
    answer3 = file.readline()
    number_answer = int(file.readline())
        
    Label(text=question).place(x=0, y=0)

    ans1 = Radiobutton(window, text=answer1, value=1, variable=var).place(x=0, y=20)
    ans2 = Radiobutton(window, text=answer2, value=2, variable=var).place(x=0, y=50)
    ans3 = Radiobutton(window, text=answer3, value=3, variable=var).place(x=0, y=80)
    btn_answer = Button(window, text="Ответить", command=check_answer).place(x=0, y=110)
        
window.mainloop()
