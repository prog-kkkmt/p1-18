#брусник Вадим Кальклятор систем счисления из системы в систему

froms = int(input('From: '))#откуда
tos = int(input('To: '))#куда

number = int(input('Number: '))#xсамо число 

def myint(n):
  if n >= 10:
    alph = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    return alph[n-10]
  return n

if froms == tos:#если они равны выводим само это число 
  print(number)
else:
  n = int(str(number), froms) # перевод в десятичную
  print(n)#печатаем как число будет выглядеть в 10 СС
  output = ''
  if n < tos:
    print(myint(n))
  else:
    while(n >= tos):
      ost = n % tos
      output += str(myint(ost))
      n = n // tos
    output += str(n)
    print(output[::-1])
