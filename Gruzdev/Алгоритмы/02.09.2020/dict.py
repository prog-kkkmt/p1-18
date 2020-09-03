# Груздев Роман, П1-18

bukvar = {}
str_ = input()
for i in str_:
    if i in bukvar:
        bukvar[i] += 1
    else:
        bukvar.update({i:1})
print(bukvar)
