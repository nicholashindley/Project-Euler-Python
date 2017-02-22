function power_digit_sum(x)
    return sum([Int(i) - 48 for i in collect(string(BigInt(2)^x))])
end

println(power_digit_sum(1000))
