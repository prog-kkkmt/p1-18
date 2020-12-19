class Enemy:
    """Enemy class"""

    enemy_cnt = 0
    
    def __init__(self, dmg, hp):
        self.damage = dmg
        self.health = hp
        Enemy.enemy_cnt += 1

    def __del__(self):
        print("Enemy dead")

    def doDamage(self):
        print("Eneny attacks(damage = " + str(self.damage) + ")")

enemy1 = Enemy(10, 20)
enemy1.doDamage() #Eneny attacks(damage = 10)
enemy1.damage = 15
enemy1.doDamage() #Eneny attacks(damage = 15)

enemy2 = Enemy(15, 25)
enemy2.doDamage() #Eneny attacks(damage = 15)

print(Enemy.enemy_cnt)

getattr(enemy2, "damage") # 15
hasattr(enemy2, "damage") # true
setattr(enemy2, "damage", 16)
enemy2.doDamage() #Eneny attacks(damage = 16)
delattr(enemy2, "damage")

print("Enemy.__doc__", Enemy.__doc__)
print("Enemy.__name__", Enemy.__name__)
print("Enemy.__module__", Enemy.__module__)
print("Enemy.__bases__", Enemy.__bases__)
print("Enemy.__dict__", Enemy.__dict__)

del enemy2 #Enemy dead
