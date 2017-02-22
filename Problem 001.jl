function multiples(x)
    total=0
    
    for i=3:x-1
        if i%3==0 || i%5==0
            total += i
        end
    end
    
    return total
end

println(multiples(1000))
