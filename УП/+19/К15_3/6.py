import sys

# перехват SystemExit который вызывается при exit()
try:
    print("Пора выходить")
    sys.exit()
except SystemExit:
    print("Нет, мы остаемся")
