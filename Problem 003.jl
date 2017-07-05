from math import sqrt

def Largest_prime_factor(x):
    i = int(sqrt(x) + 1)
    
    if i % 2 == 0:
        i += 1
    
    while i > 1:
        j = int(sqrt(i) + 1)
        
        if j % 2 == 0:
            j += 1
        
        if x % i == 0 and not any((i % k == 0) for k in range(j, 1, -2)):
            return i

        i -= 2
            
print(Largest_prime_factor(600851475143))
