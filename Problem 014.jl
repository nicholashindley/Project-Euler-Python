function longest_collatz_sequence(x)
    max_count = 0
    max_m = 0
    m = 1
    
    while m < x
        count = 1
        n = m
    
        while n != 1
            if n % 2 == 0
                n = Int(n/2)
    
            else
                n = 3*n + 1
            end
        
            count += 1
        end
        
        if count > max_count
            max_count = count
            max_m = m
        end
        
        m += 1
    end
    
    return max_m
    end
    
println(longest_collatz_sequence(10^6))