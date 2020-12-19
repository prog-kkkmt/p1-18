class Enemy:
    def __init__(self, dmg, hp):
        self.damage = dmg
        self.health = hp

    def doDamage(self):
        print("Emeny attacks(damage = " + str(self.damage) + ")")

enemy = Enemy(10, 20)
enemy.doDamage() #Emeny attacks(damage = 10)
enemy.damage = 15
enemy.doDamage() #Emeny attacks(damage = 15)
del enemy.damage
#enemy.doDamage() #Error
del enemy
