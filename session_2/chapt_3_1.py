from random import randint


class Tree(object):
    def __init__(self, number_of_nuts):
        self.number_of_nuts = number_of_nuts

    def bury(self, nuts):
        self.number_of_nuts += nuts

    def dig_up(self, nuts):
        self.number_of_nuts -= nuts

    def project_next_years_cache(self):
        return randint(self.number_of_nuts, self.number_of_nuts**2)


class Squirrel(object):
    def __init__(self, hunger, energy, mood, number_of_nuts):
        self.hunger = hunger
        self.energy = energy
        self.mood = mood
        self.tree = Tree(number_of_nuts)

    def find_nuts(self):
        number_of_nuts = randint(1, 11)
        self.tree.bury(number_of_nuts)

    def eat_nut(self):
        self.hunger -= 5
        self.tree.dig_up(1)

    def hibernate(self):
        self.energy += 10
        self.hunger += 15

    def play(self):
        self.energy -= 5
        self.mood += 10

    def dream(self):
        self.mood += self.tree.project_next_years_cache()


s1 = Squirrel(hunger=1, energy=2, mood=1, number_of_nuts=3)