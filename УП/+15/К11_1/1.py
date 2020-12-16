_dict = {}
text = input().split()
for word in text:
    if word in _dict:
        _dict[word] += 1
    else:
        _dict.update({word : 1})

print(_dict)
