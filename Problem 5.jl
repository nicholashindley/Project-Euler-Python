function smallest_multiple(x)
    return lcm([i for i in 2:x])
    end

println(smallest_multiple(20))