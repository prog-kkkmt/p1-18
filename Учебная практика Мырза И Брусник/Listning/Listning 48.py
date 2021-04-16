'''
Sys.STD + File.txt .
'''
stdout = sys.stdout
try:
    sys.stdout = open('file.txt', 'w')
    print('Hello World')
finally:
    # Закрываем file.txt
    sys.stdout.close()
    sys.stdout = stdout
