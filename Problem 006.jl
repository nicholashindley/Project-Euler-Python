function sum_square_difference(x)
    return abs(sum([i^2 for i in 1:x])-(sum([i for i in 1:x])^2))
    end

println(sum_square_difference(100))
