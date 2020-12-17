class Virt_cookies ( object ):
''' Виртуальные печеньки '''
def __init__ (self,name):
print ( 'Появилась новая печенька.' )
self.name=name
def __str__ (self):
return 'Класс – Virt_cookies, сорт печеньки – ' +self.name
def __del__ (self):
	print( 'Печенька сьедена.' )

