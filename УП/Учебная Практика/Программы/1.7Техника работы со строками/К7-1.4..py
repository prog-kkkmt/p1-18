while True:
    b = input()
    if b == "**":
        print("подробное сообщение")
    elif "@@" in b:
        print("ошибка")
    elif "!!" in b:
        print("предупреждение")
    elif "//" in b:
        print("информация")
    elif "." in b:
        break
