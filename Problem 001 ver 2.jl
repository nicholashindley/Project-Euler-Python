def Multiples_3_and_5(x):
    mult_3 = set(i for i in range(3,x,3))
    mult_5 = set(i for i in range(5,x,5))
    return sum(mult_3.union(mult_5))

print(Multiples_3_and_5(1000))
