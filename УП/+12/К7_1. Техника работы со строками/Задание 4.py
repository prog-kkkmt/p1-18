string = input()
while (string != "."):
    if (string[0] == "!" and string[1] == "!"):
        print("предупреждение")
    elif (string[0] == "@" and string[1] == "@"):
        print("ошибка")
    elif (string[0] == "/" and string[1] == "/"):
        print("информация")
    elif (string[0] == "*" and string[1] == "*"):
        print("подробное сообщение")
    string = input()
