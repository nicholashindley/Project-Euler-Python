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
            X[i][j] += maximum([X[i + 1][j], X[i + 1][j + 1]]) #instead of taking the brute-force top-down approach, we begin from the bottow-up. We begin by determining the maximum sums possible for each element of the bottow two rows, looking at the largest adjacent element of the row below. This, in essence, reduces the initial 15-row problem into a 14-row problem. So, by iteratively executing this process over all rows, we are eventually left with only one element in the uppermost row - this number will be the maximal sum!
        end
    end

    return X[1][1]
end

println(maximum_path_sum_I(triangle))
