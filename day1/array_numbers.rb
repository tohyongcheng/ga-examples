# an example:
# [1,2,3,4,5,6].select {|a| a > 3}

# To simply create an array 

arr = (1..100).to_a

first_answer = arr.select {|num| num % 3 == 0}
p first_answer

second_answer = arr.select {|num| num % 2 == 0 && num % 3 != 0}
p second_answer

third_answer = arr - first_answer - second_answer
p third_answer