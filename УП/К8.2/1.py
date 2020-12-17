import random

с = random.randrange(2,20)
b = [random.randrange(0,10) for i in range(с)]

print(b)

for i in range(1,с) :
    for j in range(0,с-i) :
        if b[j] > b[j+1] :
            b[j], b[j+1] = b[j+1], b[j]
            
print(b)
									
