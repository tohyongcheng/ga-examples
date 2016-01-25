def crazy_sum(nums)
  sum = 0
  nums.each_with_index { |num, index| sum += index * num }
  sum
end

p crazy_sum([2]) == 0 # (2*0)
p crazy_sum([2, 3]) == 3 # (2*0) + (3*1)
p crazy_sum([2, 3, 5]) == 13 # (2*0) + (3*1) + (5*2)
p crazy_sum([2, 3, 5, 2]) == 19 # (2*0) + (3*1) + (5*2) + (2*3) 


