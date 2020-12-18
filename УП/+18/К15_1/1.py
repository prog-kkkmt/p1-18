from collections import deque

dq = deque("abc") #deque(['a', 'b', 'c'])
dq.append("d") #deque(['a', 'b', 'c', 'd'])
dq.appendleft("k") #deque(['k', 'a', 'b', 'c', 'd'])
dq1 = dq.copy() #deque(['k', 'a', 'b', 'c', 'd'])
dq1.clear() #deque([])

dq.append("a") #deque(['k', 'a', 'b', 'c', 'd', 'a'])
dq.count("a") #2

dq.extend("abc")#deque(['k', 'a', 'b', 'c', 'd', 'a', 'a', 'b', 'c'])
dq.extendleft("cd") #deque(['d', 'c', 'k', 'a', 'b', 'c', 'd', 'a', 'a', 'b', 'c'])

dq.pop() #'c'
dq.popleft() #'d'

dq.reverse() #deque(['b', 'a', 'a', 'd', 'c', 'b', 'a', 'k', 'c'])
dq.rotate(2) #deque(['k', 'c', 'b', 'a', 'a', 'd', 'c', 'b', 'a'])
