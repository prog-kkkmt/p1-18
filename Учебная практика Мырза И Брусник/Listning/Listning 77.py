class Point:  
    def __init__(self, x=0, y=0):
#	x and y are coordinates of Point’s attribute .
        self.x = x  
        self.y = y  
  
    def __del__(self):  
        class_name = self.__class__.__name__  
        print('{} уничтожен'.format(class_name))  
  
  
pt1 = Point()  
pt2 = pt1  
pt3 = pt1  
print(id(pt1), id(pt2), id(pt3))  # выведите id объектов  
del pt1  
del pt2  
del pt3
