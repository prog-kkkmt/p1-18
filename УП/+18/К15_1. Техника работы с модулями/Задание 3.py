import collections

string = input()
string2 = "12345678910"
dq = collections.deque(string)

dq.append(string2)
print(dq)

dq.extend('ehwr')
print(dq)

dq.extendleft('ab')
print(dq)

print(dq.index('a', 1))

print(dq.pop())

print(dq.popleft())

dq.reverse()
print(dq)

dq.rotate(2)
print(dq)

dq.rotate(-4)
print(dq)
