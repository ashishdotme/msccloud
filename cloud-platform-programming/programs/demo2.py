
class Greetings:

    # an example of defining a class method
    @classmethod
    def say_hi(cls, name):
        return 'Hello {}!'.format(name)

print('What\'s your name?')
n = input()
print(Greetings.say_hi(n))

