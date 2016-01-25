arr = []
100.times do |i|
  arr << i+1
end

p a = arr.select { |i| i%3==0}
p b = arr.select { |i| i%2 == 0 and i%3 != 0 }
p (arr - a - b)
