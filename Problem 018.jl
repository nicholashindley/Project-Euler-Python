triangle = []

for i in readlines(open("p018.txt"))
    row = []
    
    for j in split(i)
        push!(row, parse(Int, j))
    end
    
    push!(triangle, row)
end

function maximum_path_sum_I(X)
    for i = length(X) - 1: -1: 1
        for j = 1:length(X[i])
            X[i][j] += maximum([X[i + 1][j], X[i + 1][j + 1]])
        end
    end

    return X[1][1]
end

println(maximum_path_sum_I(triangle))