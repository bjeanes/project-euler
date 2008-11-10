# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10001st prime number?

require 'rational'

class Fixnum
  def prime?
    ('1' * self) !~ /^1?$|^(11+?)\1+$/
  end
end
   
   
primes = [2, 3]

i = 5
while primes.length < 10_001
  primes.push if i.prime?
  i += 2
end

puts primes.last