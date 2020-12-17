class Enemy:
    def __init__(self, name, enemy_health = 30, damage = 5):
        self.name = "enemy"
        self.enemy_health = enemy_health
        self.damage = damage
    def hit(self, damage):
        self.enemy_health -= damage

class CreateСharacter:
    max_speed = 100
    def __init__(self, name,  race, health, damage = 10, armor = 5):
        self.name = name
        self.race = race
        self.health = 100
        self.damage = damage
        self.armor = armor
    def hit(self, damage):
        self.health -= damage

Player = CreateСharacter("Pers", 'Human', 100)
enemy = Enemy("eewre")
Player.hit(enemy.damage)
enemy.hit(Player.damage)
print(Player.health)
print(enemy.enemy_health)