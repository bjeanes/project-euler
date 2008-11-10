# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.
# 
# 
# Answer:
# 906609

999.step(800, -1) do |i|
 999.step(800, -1) do |j|
   num = i * j 
   if num.to_s == num.to_s.reverse
     puts num
     puts i, j
     return
   end
 end
end