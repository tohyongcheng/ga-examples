users = {
  "Arnold" => {
    :twitter => "schwarzenegger",
    :favorite_numbers => [12, 42, 75],
  },
  "John Cena" => {
    :twitter => "johncena",
    :favorite_numbers => [8, 12, 24],
  },
  "Martin Luther" => {
    :twitter => "martinluther",
    :favorite_numbers => [12, 14, 85],
  },
}

#1
p users["Arnold"][:twitter]

#2
p users["John Cena"][:favorite_numbers] << 7

#3
users["Yong Cheng"] = {:twitter => "sebastiantoh", :favorite_numbers => [7, 9, 11]}
p users

#4 
p users["John Cena"][:favorite_numbers]

#5
p users["John Cena"][:favorite_numbers].min

#6
p users["Martin Luther"][:favorite_numbers].select {|num| num % 2 == 0}

#7
common_numbers =  users["Arnold"][:favorite_numbers] & \
users["John Cena"][:favorite_numbers] & \
users["Martin Luther"][:favorite_numbers]

p common_numbers

#8 
common_numbers.sort.uniq
# e.g.
p [2,6,8,6,4,2].sort.uniq