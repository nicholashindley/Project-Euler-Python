function largest_prime_factor(n)
    return maximum(factor(n))[1]
    end

println(largest_prime_factor(600851475143))