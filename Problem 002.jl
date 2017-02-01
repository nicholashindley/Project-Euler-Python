function even_fibonacci_numbers(x)
    total = 0
    fib_1 = 1
    fib_2 = 1
    fib_3 = 0
    
    while fib_3 < x
        fib_3 = fib_1 + fib_2
        fib_1 = fib_2
        fib_2 = fib_3
		
        if fib_3 % 2 == 0
            total += fib_3
        end
            
    end
	
	return total
    end
    
println(even_fibonacci_numbers(4*10^6))
