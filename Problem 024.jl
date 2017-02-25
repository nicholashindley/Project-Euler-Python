function Lexicographic_permutations(x)
    return reduce(*, ["$(i)" for i in nthperm(collect(0:9), x)])
end

println(Lexicographic_permutations(10^6))