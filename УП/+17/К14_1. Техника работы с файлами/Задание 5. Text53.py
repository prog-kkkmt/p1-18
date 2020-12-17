punct_marks = []
with open("Text 53.txt", "r") as file:
    for i in file.read():
        if i == '.' or i == ',' or i == ';' or i == '!' or i == '?' or i == '-':
            punct_marks.append(i)
        elif i == '(' or i == ')' or i == '[' or i == ']' or i == '{' or i == '}':
            punct_marks.append(i)
        elif i == '"' or i == '<<' or i == '>>' or i == ':' or i == '/' or i == "'":
            punct_marks.append(i)

with open("TextPunct.txt", "w") as Punctfile:
    for i in punct_marks:
        Punctfile.write(i)