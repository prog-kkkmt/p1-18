dict = {}
s = input()
for i in s:
	if i in dict:
		dict[i] += 1
	else:
		dict.update({i:1})
print(dict)
