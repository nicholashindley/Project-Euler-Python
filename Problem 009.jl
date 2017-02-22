function special_pythagorean_triplet(x) #c.f. Dickson's method for generating Pythagorean triples
    r = 2
    
    while r > 0
        n = Int((r^2)/2)
        factors_list = [n]
        
        for i = 1:n - 1
            if n % i == 0
                push!(factors_list, i)
            end
        end
        
        factors_list = sort!(factors_list)
        for i = 0:Int(length(factors_list)/2) - 1
            s = factors_list[1+i]
            t = factors_list[end-i]
        
            a = r + s
            b = r + t
            c = r + s + t
        
            if a + b + c == x
                return a*b*c
            end
        end
        
        r += 2
    end
end

println(special_pythagorean_triplet(1000))
