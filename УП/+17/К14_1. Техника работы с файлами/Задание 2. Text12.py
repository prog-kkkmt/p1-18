string = input()

with open("Task2.txt", "r") as read_file:
    with open("Task2_1.txt", "w") as write_file:
        for i in read_file.readlines():
            print(i)
            if i != "\n":
                write_file.write(i)
            else:
                write_file.write(string+"\r")
