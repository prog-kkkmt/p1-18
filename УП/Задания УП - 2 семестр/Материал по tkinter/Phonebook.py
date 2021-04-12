from tkinter import *
from tkinter import messagebox

def clickedAndEditInFile():
    if (edit_telephon_file.get().isdigit() and len(edit_telephon_file.get()) == 11):
        resultString = ""
        with open("file.txt", "a", encoding='utf-8') as file:
            file.write(edit_name_file.get() + ' : ' + edit_telephon_file.get() + '\n')    
        file.close()
    else:
        messagebox.showinfo("Ошибка", "Вы ввели не правильный телефонный номер")
        
window = Tk()
window.title("Телефонный справочник")
window.geometry("480x150")

edit_name_file = StringVar()
edit_telephon_file = StringVar()
    
label_name = Label(text="Имя: ")
label_name.pack(side="top")

edit_name = Entry(width = 20, textvariable = edit_name_file)
edit_name.pack(side="top")

label_telephon = Label(text="Телефонный номер: ")
label_telephon.pack(side="top")

edit_telephon = Entry(width = 20, textvariable = edit_telephon_file)
edit_telephon.pack(side="top")

bedit_in_file = Button(window, text="Добавить", width = 10, command=clickedAndEditInFile)
bedit_in_file.pack(side="top")
window.mainloop()
