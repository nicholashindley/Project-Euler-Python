def Power_digit_sum(x):
    return sum(int(i) for i in str(2**x))

print(Power_digit_sum(1000))
