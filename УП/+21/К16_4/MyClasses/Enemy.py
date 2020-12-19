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
