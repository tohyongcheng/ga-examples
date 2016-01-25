def square_nums (num)
  return 0 if num == 0 
  Math.sqrt(num-1).to_i
end

p square_nums(0) == 0 
p square_nums(5) == 2 
p square_nums(10) == 3 
p square_nums(25) == 4
