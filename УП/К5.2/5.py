a=int(input())
b=''
for i in range(a+1):
    b = b + (str(i) + ' ')*i
print(b[0:a*2])
