phone_num = {}
for string in iter(input, "."):
    for i in range(len(string)):
        if string[i] == " ":
            name = string[0:i]
            number = string[i+1:len(string)]
            phone_num[name] = number
    if (string.isalpha()):
        print(phone_num[string])