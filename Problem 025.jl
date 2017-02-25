function x_digit_Fibonacci_number(x)
    i = 1
    fib_1 = 0
    fib_2 = 1
    fib_3 = 0
    
    while length(string(fib_3)) < x
        fib_3 = BigInt(fib_1 + fib_2)
        fib_1 = BigInt(fib_2)
        fib_2 = BigInt(fib_3)
        i += 1
    end
    
    return i
end