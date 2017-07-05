def Multiples_3_and_5(x):
    total = 0 
    
    for i in range(3, x):
        if i % 3 == 0 or i % 5 == 0:
            total += i
    
    return total

print Multiples_3_and_5(1000)
