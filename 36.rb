# The decimal number, 585 = 1001001001 (binary), is palindromic in both bases.
# 
# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

class Integer
  def palindrome?
    b10 = self.to_s
    b2  = self.to_s(2)
    
    if b2.reverse == b2 && b10.reverse == b10
      true
    else
      false
    end
  end
end

puts (1...1_000_000).to_a.collect{|n| n if n.palindrome? }.compact.inject(0){|s,n| s+n}