class Enemy:
    """Enemy class"""

    enemy_cnt = 0

    __damage = 0
    __health = 0

    def getDmg(self):
        return self.__damage
    def setDmg(self, dmg):
        self.__damage = dmg

    def getHp(self):
        return self.__health
    def setHp(self, hp):
        self.__health = hp
    
    def __init__(self, dmg, hp):
        self.setDmg(dmg)
        self.setHp(hp)
        Enemy.enemy_cnt += 1

    def __del__(self):
        print("Enemy dead")

    def doDamage(self):
        print("Eneny attacks(damage = " + str(self.getDmg()) + ")")

    def __add__(self, other):
        return Enemy(self.getDmg() + other.getDmg(), self.getHp() + other.getHp())

class FireEnemy(Enemy):
    def doDamage(self):
        print("Enemy attacks with fire (dmg = " + str(self.getDmg()) + ")")

enemy1 = Enemy(10, 20)
enemy1.doDamage() #Eneny attacks(damage = 10)
enemy1.setDmg(15)
enemy1.doDamage() #Eneny attacks(damage = 15)

enemy2 = Enemy(15, 25)
enemy2.doDamage() #Eneny attacks(damage = 15)

enemy3 = FireEnemy(30, 40)
enemy3.doDamage()

enemy4 = enemy1 + enemy2
print(enemy4.getDmg(), enemy4.getHp()) #30 45
print(Enemy.enemy_cnt)
