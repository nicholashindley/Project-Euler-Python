def Large_sum(x):
    return str(sum(int(i) for i in open("p013.txt").readlines()))[:x]

print(Large_sum(10))
