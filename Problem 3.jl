function largest_prime_factor(n)
    factor = Int(ceil(sqrt(n))) #since the largest prime factor of some given integer n cannot be greater than the square-root of n
    
    if iseven(n) == true  #ensures that we only consider odd values
        factor += 1
    end
    
    while factor > 0
        if isprime(factor) && n % factor == 0
            return factor
        end

    factor -= 2
    end
    
    end

println(largest_prime_factor(600851475143))