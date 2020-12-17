# Задание 2.
# Придумать пример(ы) на использование break / continue /else. 

import random

for i in range(5):
    x = random.randint(0, 25)
    if 10 <= x <= 15:
        print('выпало число', x, 'на итерации', i)
        break
    else:
        continue
else:
    print('ни одно число не попало в промежуток 10 <= x <= 15')
    
