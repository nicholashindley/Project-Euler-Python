from math import sqrt

def Highly_divisible_triangular_number(x):
    n = 0
    m = 0

    while n >= 0:
        if 2 * sum((n % i == 0) for i in range(1, int(sqrt(n)) + 1)) > x:
            return n
        
        n += m
        m += 1

print(Highly_divisible_triangular_number(500))
