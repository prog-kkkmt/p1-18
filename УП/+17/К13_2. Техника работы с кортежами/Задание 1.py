from collections import namedtuple

print("Primer 1\n")
Point = namedtuple('Point', ['x', 'y'])

x, y = int(input()), int(input())
p = Point(x, y)
print(p[0] - p[1])
print(p[0] * p[1])
print(p[0] / p[1])
print(p)

print("Primer 2\n")
lst = [1, 2]
p = Point._make(lst)
print(p)

print("Primer 3\n")
Home = namedtuple('home', ['color', 'width', 'height'])
p = Home("#ffff0000", "50", "150")
print(p.color)

print("Primer 4\n")
Persona = namedtuple('Person', 'name age group')
Peter = Persona(name='Peter', age='18', group='P1-18')
Andrey = Persona(name='Andrey', age='18', group='P1-18')
for i in [Peter, Andrey]:
    print(i)

print(Peter._replace(name="icefantik"))

print("Primer 5\n")
Point3D = namedtuple('Point3D', Point._fields + ('z',))
print(Point3D(10, 20, 30))

Point2D = namedtuple('Point2D', Point._fields)
print(Point2D(10, 20))

print("Primer 6\n")
Group = namedtuple("Group", ['name', 'age', 'group'])
for i in range(1):
    s_name = input()
    s_age = input()
    s_group = input()
    Group.__doc__ += str(i)
    Group.name.__doc__ = s_name
    Group.age.__doc__ = s_age
    Group.group.__doc__ = s_group

print("Primer 7")
lst = []
Group2 = namedtuple('Group2', ['name', 'age', 'group'])
for i in range(1, 2):
    s_name = input()
    s_age = input()
    s_group = input()
    lst.append(Group2(name=s_name, age=s_age, group=s_group))

for i in lst:
    print("Name: {0}, age: {1}, group: {2}".format(i.name, i.age, i.group))

