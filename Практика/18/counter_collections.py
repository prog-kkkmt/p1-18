import collections
collect = collections.Counter()
for word in ['medpack', 'wood', 'wood', 'wood', 'food']:
    collect[word] += 1
print('Общий инвентарь:', collect)
print('Дерева всего:', collect['wood'])