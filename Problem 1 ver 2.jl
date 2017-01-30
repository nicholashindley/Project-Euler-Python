function multiples_of_3_and_5(x)
    mult_3=[i for i=3:3:x-1]
    mult_5=[i for i=5:5:x-1]
    return sum(union(mult_3,mult_5))
    end

println(multiples_of_3_and_5(1000))