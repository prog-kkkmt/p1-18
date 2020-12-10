while (1):
    print ('''(P) -> print
(R) -> repit
(B) -> break
''')
    i = input()
    if i == 'P' or i == 'p':
        print("Hello world")
    elif i == 'R' or i == 'r':
        print("Plz repit :)")
        continue
    elif i == 'B' or i == 'b':
        break
    else:
        print("Error")
    
