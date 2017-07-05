def Even_Fibonacci_numbers(x):
    total = 0
    fib_1 = 1
    fib_2 = 1
    fib_3 = 0
    
    while fib_3 < x:
        fib_3 = fib_1 + fib_2
        fib_1 = fib_2
        fib_2 = fib_3
        
        if fib_3 % 2 == 0:
            total += fib_3
    
    return total

print(Even_Fibonacci_numbers(4*10**6))
