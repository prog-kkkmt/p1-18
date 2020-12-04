n = int(input())
k=0
T = [0,1]
for i in range(2,n):
    T.append((T[i-1]+T[i-2])%10)
    k = k+1
    if (T[i]==1) and (T[i-1]==0):
        break
print(T[(n%k)]) 
