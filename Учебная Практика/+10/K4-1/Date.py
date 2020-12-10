import re
 
t = '06.10.1990'
 
r = re.findall(r'(\d{2})\.(\d{2})\.(\d{4})', t)[0]
d, m, y = tuple(map(int, r))
print(d, m, y)
 
d_ls = (
    'первое', 'второе', 'третье', 'четвёртое', 'пятое', 
    'шестое', 'седьмое', 'восьмое', 'девятое', 'десятое',
    'одиннадцатое', 'двенадцатое', 'тринадцатое', 'четырнадцатое', 'пятнадцатое', 
    'шестьнадцатое', 'семьнадцатое', 'восемьнадцатое', 'девятнадцатое', 'двадцатое')
 
# assert 0 < d < 31
if d == 30:
    print('тридцатое', end=' ')
else:
    if d > 30:
        print('тридцать', end=' ')
        d %= 30
    elif d > 20:
        print('двадцать', end=' ')
        d %= 20
    print(d_ls[d-1], end=' ')
