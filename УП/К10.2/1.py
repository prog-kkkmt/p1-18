n=[]
while True:
    n.append(input())
    if n =='.':
        break
for i in range(len(n)-1,-1,-1):
    print(n[i],end = ' ')
