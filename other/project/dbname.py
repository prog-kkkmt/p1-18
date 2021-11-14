import tkinter as tk
from tkinter import ttk
import sqlite3

class Main(tk.Frame):
    def __init__(self, root):
        super().__init__(root)
        self.init_main()
        self.db = db
        self.view_records()

    def init_main(self):
        toolbar = tk.Frame(bg='#d7d8e0', bd=2)
        toolbar.pack(side=tk.TOP, fill=tk.X)

        self.add_img = tk.PhotoImage(file='add.gif')
        btn_open_dialog = tk.Button(toolbar, text='Добавить', command=self.open_dialog, bg='#d7d8e0', bd=0,
                                    compound=tk.TOP, image=self.add_img)
        btn_open_dialog.pack(side=tk.LEFT)

        self.update_img = tk.PhotoImage(file='update.png')
        btn_edit_dialog = tk.Button(toolbar, text='Редактировать', command=self.open_update_dialog, bg='#d7d8e0', bd=0,
                                    compound=tk.TOP, image=self.update_img)
        btn_edit_dialog.pack(side=tk.LEFT)

        self.delete_img = tk.PhotoImage(file='delete.png')
        btn_delete_dialog = tk.Button(toolbar, text='Удалить', command=self.delete_records, bg='#d7d8e0', bd=0,
                                    compound=tk.TOP, image=self.delete_img)
        btn_delete_dialog.pack(side=tk.LEFT)

        self.tree = ttk.Treeview(self, columns=('EquipID', 'EquipNameID', 'Name', 'DayOf', 'Note'), height=15, show='headings')

        self.tree.column('EquipID', width=128, anchor=tk.CENTER)
        self.tree.column('EquipNameID', width=128, anchor=tk.CENTER)
        self.tree.column('Name', width=128, anchor=tk.CENTER)
        self.tree.column('DayOf', width=128, anchor=tk.CENTER)
        self.tree.column('Note', width=128, anchor=tk.CENTER)

        self.tree.heading('EquipID', text='EquipID')
        self.tree.heading('EquipNameID', text='EquipNameID')
        self.tree.heading('Name', text='Название')
        self.tree.heading('DayOf', text='Дата')
        self.tree.heading('Note', text='Примечание')

        self.tree.pack(side=tk.LEFT)

        scroll = tk.Scrollbar(self, command=self.tree.yview)
        scroll.pack(side=tk.LEFT, fill=tk.Y)
        self.tree.configure(yscrollcommand=scroll.set)

    def records(self, equipid, equiptypeid, equipname, dayof, note):
        self.db.insert_data(equipid, equiptypeid, equipname, dayof, note)
        self.view_records()

    def update_records(self, equipid, equiptypeid, equipname, dayof, note):
        self.db.cursor.execute('''UPDATE equip SET equipid=?, equiptypeid=?, equipname=?, dayof=?, note=? WHERE equipid=?''',
                               (equipid, equiptypeid, equipname, dayof, note, self.tree.set(self.tree.selection()[0], '#1')))
        self.db.conn.commit()
        self.view_records()

    def view_records(self):
        self.db.cursor.execute('''SELECT * FROM equip''')
        [self.tree.delete(i) for i in self.tree.get_children()]
        [self.tree.insert('', 'end', values=row) for row in self.db.cursor.fetchall()]

    def delete_records(self):
        for selection_item in self.tree.selection():
            self.db.cursor.execute('''DELETE FROM equip WHERE equipid=?''', (self.tree.set(selection_item, '#1'), ))
        self.db.conn.commit()
        self.view_records()

    def open_dialog(self):
        Child()

    def open_update_dialog(self):
        Update()

class Child(tk.Toplevel):
    def __init__(self):
        super().__init__(root)
        self.init_child()
        self.view = app

    def init_child(self):
        self.title('Добавить данные в базу')
        self.geometry("400x300+400+300")
        self.resizable(0, 0)

        label_equipid = tk.Label(self, text='EquipID:')
        label_equipid.place(x=50,y=50)
        label_equipnameid = tk.Label(self, text='EquipNameID:')
        label_equipnameid.place(x=50, y=80)
        label_name = tk.Label(self, text='Name:')
        label_name.place(x=50,y=110)
        label_dayof = tk.Label(self, text='Дата:')
        label_dayof.place(x=50, y=140)
        label_note = tk.Label(self, text='Примечание:')
        label_note.place(x=50, y=170)

        self.entry_equipid = ttk.Entry(self)
        self.entry_equipid.place(x=200,y=50)
        self.entry_equiptypeid = ttk.Entry(self)
        self.entry_equiptypeid.place(x=200, y=80)
        self.entry_name = ttk.Entry(self)
        self.entry_name.place(x=200, y=110)
        self.entry_dayof = ttk.Entry(self)
        self.entry_dayof.place(x=200, y=140)
        self.entry_note = ttk.Entry(self)
        self.entry_note.place(x=200, y=170)

        btn_cancel = ttk.Button(self, text='Закрыть', command=self.destroy)
        btn_cancel.place(x=250, y=200)

        self.btn_ok = ttk.Button(self, text='Добавить')
        self.btn_ok.place(x=170, y=200)
        self.btn_ok.bind('<Button-1>', lambda event: self.view.records(self.entry_equipid.get(),
                                                                  self.entry_equiptypeid.get(),
                                                                  self.entry_name.get(),
                                                                  self.entry_dayof.get(),
                                                                  self.entry_note.get()))

        # self.combobox = ttk.Combobox(self, values=[u'Доход', u'Расход'])
        # # self.combobox.current(0)
        # self.combobox.place(x=200, y=80)

        self.grab_set()
        self.focus_set()

class Update(Child):
    def __init__(self):
        super().__init__()
        self.edit()
        self.view = app
        self.db = db
        self.edit_defauilf()

    def edit(self):
        self.title('Редактировать данные')
        btn_edit = ttk.Button(self, text='Редактировать')
        btn_edit.place(x=150,y=200)
        btn_edit.bind('<Button-1>', lambda event: self.view.update_records(self.entry_equipid.get(),
                                                                  self.entry_equiptypeid.get(),
                                                                  self.entry_name.get(),
                                                                  self.entry_dayof.get(),
                                                                  self.entry_note.get()))
        self.btn_ok.destroy()

    def edit_defauilf(self):
        self.db.cursor.execute('''SELECT * FROM equip  WHERE equipid=?''',
                          (self.view.tree.set(self.view.tree.selection()[0], '#1'),))
        row = self.db.cursor.fetchone()
        self.entry_equipid.insert(0, row[0])
        self.entry_equiptypeid.insert(0, row[1])
        self.entry_name.insert(0, row[2])
        self.entry_dayof.insert(0, row[3])
        self.entry_note.insert(0, row[4])


class Database():
    def __init__(self):
        self.conn = sqlite3.connect('database.db')
        self.cursor = self.conn.cursor()
        self.cursor.execute('''CREATE TABLE IF NOT EXISTS equip(equipid INT PRIMARY KEY, equiptypeid INT FORGIVEN KEY, equipname TEXT, dayof TEXT, note TEXT)''')
        self.conn.commit()

    def insert_data(self, equipid, equiptypeid, equipname, dayof, note):
        self.cursor.execute('''INSERT INTO equip(equipid, equiptypeid, equipname, dayof, note) VALUES (?, ?, ?, ?, ?)''',
                            (equipid, equiptypeid, equipname, dayof, note))
        self.conn.commit()

if __name__ == "__main__":
    root = tk.Tk()
    db = Database()
    app = Main(root)
    app.pack()
    root.title("База данных")
    root.geometry("655x400+400+300")
    root.resizable(0, 0)
    root.mainloop()