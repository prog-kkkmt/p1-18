from collections import defaultdict

# Подсчёт кол-ва вхождений слов в тексте
text = "Some text Some text Some text text text text"
d = defaultdict(int)
for word in text.split():
    d[word] += 1
print(d.items()) #dict_items([('Some', 3), ('text', 6)])

a = [("Товар1", "Много"), ("Товар2", "Мало")]
d = defaultdict(lambda: "Отсутствует")
for k, v in a:
    d[k] = v
for i in range(1, 4):
    print("Товар"+str(i)+":" , d["Товар"+str(i)])
    #Товар1: Много
    #Товар2: Мало
    #Товар3: Отсутствует
