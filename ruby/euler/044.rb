# Pentagonal numbers are generated by the formula, Pn=n(3n-1)/2. 
# The first ten pentagonal numbers are:

# 1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...

# It can be seen that P4 + P7 = 22 + 70 = 92 = P8. 
# However, their difference, 70 - 22 = 48, is not pentagonal.

# Find the pair of pentagonal numbers, Pj and Pk, for which their 
# sum and difference is pentagonal and D = |Pk - Pj| is minimised; 
# what is the value of D?

require 'set'

i = 2
nums = Set.new [1]
nums_to_check = []
last = 1
while true do
  last = last + 3 * i - 2
  i +=1
  while not nums_to_check.empty? and last >= nums_to_check.first do
    sum, num = nums_to_check.first(2)
    nums_to_check = nums_to_check.drop(2)
    # puts "get #{sum}, #{num}, #{nums}, #{last}"
    if nums.include? sum or last == sum then
      puts "#{sum - num - num}"
      abort "found" 
    end
  end

  nums.each do |num|
    next unless nums.include? last - num
    nums_to_check << last + num << num
  end
  nums << last
end