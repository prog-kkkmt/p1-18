import numpy

arr = (100 - 0) * numpy.random.random_sample((5,))-5
arr = arr.astype(numpy.int64)

arr = numpy.insert(arr, 2, -20)
print(arr)

arr = numpy.delete(arr, 2)
print(arr)

arr2 = numpy.sort(arr)
print(arr2)

print("arr bytes size: ", arr.itemsize)
print("arr2 bytes size: ", arr2.itemsize)

arr = numpy.concatenate((arr, arr2))
print(arr)

print("arr bytes size: ", arr.itemsize)
