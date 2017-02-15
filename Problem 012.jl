function highly_divisible_triangular_number(x)
    n = 1

    while n > 0
        t = Int(n*(n + 1)/2) #calculates the nth triangular number
        d = 2 + 2 * sum([t % i == 0 for i = 2:floor(sqrt(t))]) #since 1 and t will always be divisors of t, for all t > 1 there will be at least 2 divisors. Additionally, every divisor below the square-root of t will have a corresponding divisor above the square-root of t whose product gives t, thus we multiply the number of divisors below the square-root of t by 2 
        
        if d > x
            return t
        end
        
        n += 1
    end
    end

println(highly_divisible_triangular_number(500))
