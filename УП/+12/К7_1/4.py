signals = {"!!" : "предупреждение", "@@" : "ошибка",
           "//" : "информация", "**" : "подробное сообщение"}
s = input()
while s != '.':
    indicator = s[0:2]
    if indicator in signals:
        print(signals[indicator])
    s = input()
