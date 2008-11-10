# n! means n  (n  1)  ...  3  2  1
# 
# Find the sum of the digits in the number 100!

class Integer
  def fact
    return 1 if self == 0
    (1..self).inject { |i,j| i*j }
  end
end


puts 100.fact.to_s.split('').inject(0) { |s,n| n.to_i + s.to_i }