# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
# 
# Answer: 232792560 

# This implementation takes WAY TOO LONG

# 
# # 
# # # 1-10 are definitely divisible if the top half are too...
# # def divisors; @divisors ||= (11..20).to_a.reverse; end
# # 
# # def match?(num)
# #   divisors.all? {|div| num % div == 0}
# # end
# # 
# # print "largest: "
# # puts largest = divisors.inject(1) {|a,b| a*b}
# # 
# # (19*20).step(largest, 20) do |num|
# #   if match?(num)
# #     puts num
# #     exit
# #   end
# # end
# # 
# # puts "No match..."
# 




# 
# 
#   BETTER VERSION (from forums)
# 
# 
require 'rational'
num = (1..20).inject(1) { |result, n| result.lcm n }
puts "Smallest evenly divisible number is #{ num }."