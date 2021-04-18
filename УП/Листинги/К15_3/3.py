import sys

#sys.version_info(major=3, minor=8, micro=0, releaselevel='final', serial=0)
print(sys.version_info) 

# hexversion гарантированно увеличивается
if sys.hexversion >= 0x030502F0: #3.5.2
    # используйте дополнительные функции
    ...
else:
    # используйте альтернативную реализацию 
    # или предупредите пользователя
    ...
