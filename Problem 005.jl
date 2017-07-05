def Smallest_multiple(x):
    i = x

    while i > 0:
        if all((i % j == 0) for j in range(2, x + 1)):
            return i
        
        i += x
    
print(Smallest_multiple(20))
