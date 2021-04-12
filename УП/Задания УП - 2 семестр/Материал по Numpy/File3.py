import numpy

arr = (100 - 0) * numpy.random.random_sample((5,))-5
arr = arr.astype(numpy.int64)

print(arr)
print(arr.sum())
print(arr.min())
print(arr.max())
print(arr.mean())
print(arr.std())
print(numpy.median(arr))
print(arr > 10)

tf = arr > 10
print(tf)
