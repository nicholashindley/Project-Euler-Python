function nth_prime(n)
    return primes(ceil(Int,(n*(log(n)+log(log(n))))))[n] #c.f. Rosser's theorem
end

println(nth_prime(10001))
