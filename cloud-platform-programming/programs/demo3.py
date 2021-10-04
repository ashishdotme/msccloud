

class Greetings:

    # an example of defining a static method
    @staticmethod
    def say_hi(name):
        return 'Hello {}!'.format(name)


print('What\'s your name?')
n = input()
print(Greetings.say_hi(n))



