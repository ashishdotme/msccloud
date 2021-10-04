class RecommendedWeight:
    def __init__(self, height, age):
        self.height = height
        self.age = age

    def display(self):
        return (self.height - 100 + age % 10) * 0.90

print('What\'s your height and age?')
n = input()
g = RecommendedWeight(n)
print(g.display())