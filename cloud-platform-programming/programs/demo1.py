class Greetings:
    def __init__(self, my_name):
        self.name = my_name

    def say_hi(self):
        return 'Hello {}!'.format(self.name)

print('What\'s your name?')
n = input()
g = Greetings(n)
print(g.say_hi())



