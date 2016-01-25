# p "hello world"

# 1. prompt the user for their age
# 2. get the age and convert to a integer using .to_i 
# 3. use if else statements

p "Hello~ What is your age?"
age = gets.chomp.to_i

if age < 18
  puts "You are underage!!!!"
else
  puts "Ok, go ahead for your drinks..."
end

# What if your input is a string?
# Ruby has no way to check whether the string is like a number. e.g you can run 'abcd'.to_i