import MyClasses.Enemy as myEnemy

if __name__ == "__main__":
    e = myEnemy.Enemy(10, 20)
    e.doDamage() #Eneny attacks(damage = 10)

    e1 = myEnemy.FireEnemy(15, 20)
    e1.doDamage() #Enemy attacks with fire (dmg = 15)
    e1.setDmg(20)
    e1.doDamage() #Enemy attacks with fire (dmg = 20)

    del e #Enemy dead
    del e1 #Enemy dead
