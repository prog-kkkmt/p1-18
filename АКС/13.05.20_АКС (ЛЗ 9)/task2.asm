# сложите значения в регистрах %eax и %edx
add %edx, %eax
jc if_overflow
    # если произошло переполнение, то перейдите
    # к метке if_overflow (инструкции add и jc)
mov $1, %eax
    # иначе запишите в %eax 1 и перейдите к
    # к метке return (инструкции mov и jmp)
jmp return
if_overflow:
    # запишите в %eax 0 (инструкция mov)
    mov $0, %eax 

return: