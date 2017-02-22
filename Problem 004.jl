function largest_palindrome_product(no_digits)  #input is the maximum number of digits of the numbers whose product must be palindromic
    largest_palindrome = 0
    
    for i = 10^(no_digits - 1): 10^(no_digits) - 1
        for j = i : 10^(no_digits) - 1
            if string(i * j) == reverse(string(i * j)) && i * j > largest_palindrome
                largest_palindrome = i * j
            end
        end
    end
    
    return largest_palindrome
end

println(largest_palindrome_product(3))
