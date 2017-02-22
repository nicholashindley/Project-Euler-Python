function largest_product_in_a_series(no_digits)
    largest_product = 0
    
    text = join([chomp(i) for i in readlines(open("p008.txt"))]) #concatenates each line from the file "p008.txt" into a single string
    
    for i = 1:length(text) - no_digits
        
        product=1
        for j = 0:no_digits - 1
            product *= Int(text[i + j]) - 48
        end
        
        if product > largest_product
            largest_product = product
        end
    end
    
    return largest_product
end

println(largest_product_in_a_series(13))
