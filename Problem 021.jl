function d(n)
    total = 1
    
    for i = 2:ceil(Int, sqrt(n))
        if n % i == 0
            total += i + Int(n/i) #since every divisor, i, below the square-root of n will have a corresponding divisor, n/i, above the square-root
        end
    end
    
    return total
end

function amicable_sum(x)
    total = 0
    n = 2
    
    while n < x
        if d(n) > n && n == d(d(n)) #the first condition ensures that we do not double-count n & d(n); the second condition ensures that n is indeed amicable
            total += n + d(n)
        end
        
        n += 2
    end
    
    return total
end

println(amicable_sum(10^4))