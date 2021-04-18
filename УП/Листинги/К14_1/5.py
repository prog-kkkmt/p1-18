f = open("data.txt", "r")
out = open("output.txt", "w")
p_marks = ['.', ',', '?', '!', ':', ';']
for line in f:
    for c in line:
        if c in p_marks:
            out.write(c + ' ')
f.close()
out.close()
