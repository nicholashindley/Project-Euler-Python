function large_sum(x)
    X  = BigInt[]

    for i in readlines(open("p013.txt"))
        push!(X, parse(BigInt, i)) #appends each line of the file "p013.txt" to an array of integers
    end
    
    return string(sum(X))[1:x]
    end

println(large_sum(10))