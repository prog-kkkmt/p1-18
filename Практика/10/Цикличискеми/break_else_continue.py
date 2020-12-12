import random
print("Если число выше 9, программа остановится, если числа не четные наносится урон, в противном случае HEAL.")
health = int(100)
while True:
    rand = random.randint(1, 9)
    print(rand)
    x = int(input())
    if x > 9:
        break
    elif x % 2 == 1:
        health -= 20
        print(health)
    elif x == rand:
        health += 15
        print(health)
    if health >= 200:
        print("Won.")
    elif health <= 0:
        print("Defeat.")
        print("Next? Y/N")
        choose = input()
        if choose == "Y":
            health = 100
            continue
        else:
            break