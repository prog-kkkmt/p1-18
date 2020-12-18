import math

def sortCities(cities):
    l = len(cities)
    for i in range(l-1):
        for j in range(l-i-1):
            length1 = cities[j][1]**2 + cities[j][2]**2
            length2 = cities[j+1][1]**2 + cities[j+1][2]**2
            if length1 > length2:
                cities[j+1], cities[j] = cities[j], cities[j+1]

cities = []
for line in open("data.txt"):
    city, x, y = line.split()
    x = int(x)
    y = int(y)
    cities.append((city, x, y))

_max = [(0,0), (0,0), 0]
equals = []

l = len(cities)
for i in range(l-1):
    for j in range(i+1, l):
        x1, x2 = cities[i][1], cities[j][1]
        y1, y2 = cities[i][2], cities[j][2]
        l1 = math.sqrt(x1**2 + y1**2)
        l2 = math.sqrt(x2**2 + y2**2)
        if l1 == l2:
            equals.append(((x1,y1), (x2, y2)))
        length = math.sqrt((x1-x2)**2 + (y1-y2)**2)
        if length > _max[2]:
            _max[0] = (x1, y1)
            _max[1] = (x2, y2)
            _max[2] = length

print("Diameter: " ,_max[0], _max[1])
print("Equals: ", *equals)
sortCities(cities)
print("Sorted by length from the center: ", *cities)
