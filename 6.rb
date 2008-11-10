# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
# 
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
# 
# 
# Answer:
# 25164150

a = (1..100).to_a

sum = lambda {|i,j| i + j}

a2 = a.map {|n| n*n}.inject(0, &sum)
a3 = a.inject(0, &sum)
a3 *= a3

puts (a2 - a3).abs
