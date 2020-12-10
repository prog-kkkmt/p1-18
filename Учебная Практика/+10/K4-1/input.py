'''
Задание. Разработать программы по темам
- input
Функция input() в Python, ввод данных с клавиатура.
https://docs-python.ru/tutorial/vstroennye-funktsii-interpretatora-python/funktsija-input/
'''
# test.py 

def str_to_num(line):
    """функция конвертирует строку в число"""
    line = line.strip()
    # если в строке только цифры
    if line.isdigit():
        return int(line) 
    # если строка содержит точку или запятую
    elif '.' in line or ',' in line:
        # если из строки убрать точку или запятую
        # и при этом в строке останутся только цифры
        if any(line.replace(x, '').isdigit() for x in ['.', ',']):
            return float(line.replace(',', '.'))
    else:
        # ошибка
        print('Это не число!\n')
        return None

print('\nДля выхода из программы введите Ctrl+C')
print('Для окончания ввода цифр нажмите Enter\n')

nums = []
while True:
    inpt = input('Ожидается ввод числа или Enter:')
    if inpt == '':
        # Закончить ввод чисел
        break
    n = str_to_num(inpt)
    if n is not None:
        nums.append(n)

if nums:
    if len(nums) == 1:
        print('Вы ввели одну цифру: ', nums[0])
    else:
        print('\nВыберите действие:')
        print('  сложить цифры введите 1;')
        print('  умножить цифры введите 2.\n')

        rez = None
        while True:
            inpt = input('Введите 1 или 2:')
            inpt = inpt.strip()
            if inpt == '1':
                rez = sum(nums)
                print('Сумма введенных чисел:', rez)
            elif inpt == '2':
                rez = 1
                for i in nums:
                    rez *= i
                print('Произведение введенных чисел:', rez)
            else:
                print('Неправильное действие.\n')
            
            if rez is not None:
                break
else:
    print('Вы ничего не ввели.')
