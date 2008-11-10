# Using names.txt, a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. 
# Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
# 
# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 
# 938th name in the list. So, COLIN would obtain a score of 938  53 = 49714.
# 
# What is the total of all the name scores in the file?
# 
# Answer: 871198282
                            
class String
  def value
    chars = self.split('')
    chars.inject(0){|s,n| s + (n.upcase[0] - 64)}
  end
end


File.open('22-names.txt', 'r') do |f|
  lines = f.read
  lines = lines.scan(/[A-Z]+/)  
  lines.sort!
  lines.collect! { |line| line.value }
  
  sum = 0
  lines.each_with_index { |l,i| sum += l * (i+1) }
  puts sum
end