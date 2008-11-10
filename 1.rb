# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

# Answer: 233334166668


sum = (1..1000000).to_a.inject(0) do |sum, num|
  if num % 3 == 0 || num % 5 == 0
    sum + num
  else
    sum
  end
end

puts sum