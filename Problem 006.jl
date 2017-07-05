def Sum_square_difference(x):
    return sum(i for i in range(x + 1))**2 - sum(i**2 for i in range(x + 1))

print(Sum_square_difference(100))
