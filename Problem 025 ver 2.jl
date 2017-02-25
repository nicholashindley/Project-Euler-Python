function x_digit_Fibonacci_number(x)
    f = BigInt[1, 1]

    while length(string(last(f))) < x
        push!(f, (f[length(f) - 1] + f[length(f)]))
    end
    
    return length(f)
end

println(x_digit_Fibonacci_number(10^3))