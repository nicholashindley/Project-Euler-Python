function lattice_paths(n) #input is number of rows/columns in an n x n grid
    return binomial(2 * n, n)
end

println(lattice_paths(20))
