function largest_product_in_a_grid(no_digits)
    largest_product = 0
    
    grid = []
    for line in readlines(open("p011.txt"))
        for num in split(line)
        push!(grid, parse(Int,num))
        end
    end
    grid = transpose(reshape(grid,20,20)) #constructs the desired 20x20 matrix from the file "p011.txt"

    left_right = 0 
    
    for row = 1:20
        row_product = 0
        
        for col = 1:20-(no_digits - 1)
            col_product = 1
            
            for i = 0:no_digits - 1
                col_product *= grid[row,col + i]
            end
            
            if col_product > row_product
                row_product = col_product
            end
        end
        
        if row_product > left_right
            left_right = row_product
        end
    end
    
    if left_right > largest_product
        largest_product = left_right
    end
    
    up_down = 0 
    
    for col = 1:20
        col_product = 0
        
        for row = 1:20-(no_digits - 1)
        row_product = 1
            
            for i = 0:no_digits - 1
                row_product *= grid[row + i,col]
            end
            
            if row_product > col_product
                col_product = row_product
            end
        end
        
        if col_product > up_down
            up_down = col_product
        end
    end
    
    if up_down > largest_product
        largest_product = up_down
    end

    left_diagonal = 0 
    
    for row = 1:20-(no_digits - 1)
        row_product = 0
        
        for col = 1:20-(no_digits - 1)
            col_product = 1
            
            for i = 0:no_digits - 1
                col_product *= grid[row + i,col + i]
            end
            
            if col_product > row_product
                row_product = col_product
            end
        end
        
        if row_product > left_diagonal
            left_diagonal = row_product
        end
    end
    
    if left_diagonal > largest_product
        largest_product = left_diagonal
    end
    
    right_diagonal = 0 
    
    for row = 1:20-(no_digits - 1)
        row_product = 0
        
        for col = 20:-1:no_digits
            col_product = 1
            
            for i = 0:no_digits - 1
                col_product *= grid[row + i,col - i]
            end
            
            if col_product > row_product
                row_product = col_product
            end
        end
        
        if row_product > right_diagonal
            right_diagonal = row_product
        end
    end
    
    if right_diagonal > largest_product
        largest_product = right_diagonal
    end

    return largest_product
    end

println(largest_product_in_a_grid(4))