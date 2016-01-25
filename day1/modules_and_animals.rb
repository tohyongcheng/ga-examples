module Walkabble
  def walk
    puts "dum dee dum dum dum... walking in here."
  end
end

class Animal
  def walk
    puts "I move here move there"
  end
end

class Dog < Animal
  include Walkabble

  # def walk
  #   puts "Woof. Woofwoofwoofwoof. woof."
  # end
end

class Cat
  include Walkabble
end

my_dog = Dog.new
p Dog.ancestors
my_dog.walk