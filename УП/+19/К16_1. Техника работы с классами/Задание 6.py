class CreateСharacter:
    max_speed = 100
    def __init__(self, name,  race, health, damage = 10, armor = 5):
        self.name = name
        self.race = race
        self.health = 100
        self.damage = damage
        self.armor = armor
    def print_haracteristic(self):
        print("Name:", self.name)
        print("Race:", self.race)
        print("Health:", self.health)
        print("Damage:", self.damage)
        print("Armor:", self.armor)

Player = CreateСharacter("Pers", 'Human', 100)
Player.print_haracteristic()
Player.name = "Peter"
print("------------")
Player.print_haracteristic()