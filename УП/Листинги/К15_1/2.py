from collections import Counter
cnt = Counter("aaaabbbccd") #Counter({'a': 4, 'b': 3, 'c': 2, 'd': 1})
dict(cnt) #{'a': 4, 'b': 3, 'c': 2, 'd': 1}

list(cnt.elements())#['a', 'a', 'a', 'a', 'b', 'b', 'b', 'c', 'c', 'd']
cnt.most_common(3) #[('a', 4), ('b', 3), ('c', 2)]

cnt1 = Counter(a=3, b=2, c=1)
cnt.subtract(cnt1) # Counter({'a': 1, 'b': 1, 'c': 1, 'd': 1})
cnt1.update(Counter("aabc")) # Counter({'a': 5, 'b': 3, 'c': 2})

print(cnt1['a']) #5
del(cnt1['b']) #Counter({'a': 5, 'c': 2})
