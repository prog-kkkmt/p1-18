with open("Text20.txt", "r") as f_read:
    with open("Text20_1.txt", "w") as f_write:
        nc = 0
        final_string = ""
        for string in f_read.readlines():
            nc = 0
            for j in range(len(string)):
                if (string[j] == " " and nc == 0):
                    nc += 1
                    final_string += string[j]
                elif (string[j] != " "):
                    nc = 0
                    final_string += string[j]
                #elif (nc > 1):
        f_write.write(final_string)
        print(final_string)
