function factorial_digit_sum(n)
           return sum([Int(i) - 48 for i in collect(string(factorial(BigInt(n))))])
       end 

println(factorial_digit_sum(100))

