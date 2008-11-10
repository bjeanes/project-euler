# Using Sieve of Eratosthenes (http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes)

require 'PP'

class Sieve
  attr_reader :possibles
  
  def initialize(limit)
    @limit = limit
    @primes = []
    
    @possibles = (2..limit).to_a
    remove_two_multis!
  end
  
  def primes
    until @possibles.empty?
      @primes << @possibles.shift
      @possibles = @possibles.find_all {|p| p % @primes.last != 0}
    end
    
    @primes
  end
  
  def largest
    primes.last
  end
  
  def size
    primes.size
  end
  
  alias count size
  alias length size
  
private
  def remove_two_multis!
    @possibles = @possibles.find_all {|p| p == 2 || p % 2 != 0}
  end
end

s = Sieve.new(300000)