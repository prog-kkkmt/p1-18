_dict = {}
for i in range(int(input())):
    for word in input().split():
        if word in _dict:
            _dict[word] += 1
        else:
            _dict.update({word : 1})

_max = 0
for k in _dict:
    _max = max(_max, _dict[k])
print(min(list(filter(lambda x: _dict[x] == _max, _dict.keys()))))
