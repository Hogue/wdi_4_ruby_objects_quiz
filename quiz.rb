# Question 1
# Create a class called Dog. It should have, as attributes, name, breed, and age.
# Make all of those attributes read-only.


class Dog
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

  attr_reader :name, :breed, :age
end

# Question 2
# Create a new Dog object.
pig = Dog.new("pig", "pug", 11)

# Question 3
# Create a Person class, with attributes name, age, and location.
# It should set all three attributes when you create a new Person.
# Name and location should be writeable, but age should be read-only.

class Person
  def initialize(name, age, location)
    @name = name
    @age = age
    @location = location
  end

  attr_reader :age
  attr_accessor :name, :location

end

# Question 4
# Create a new Person object using parameters "Dave", 32, and "Ohio".
# Then, set that Person's location to "Somerville"
Dave = Person.new("Dave", 32, "Ohio")

Dave.location = "Somerville"


# Question 5
# Create another class called Developer that inherits from Person.
# Give it a new private method called 'write_code', which prints out "TYPE TYPE TYPE".
# Also give it a new public method called 'hire_for_job', which calls 'write_code'

class Developer < Person
  def write_code
    puts "TYPE TYPE TYPE"
  end

  def hire_for_job
    write_code
  end
end



## Here's my full code

class Dog

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

    attr_reader :name, :breed, :age
end

class Person
  def initialize(name, age, location)
    @name = name
    @age = age
    @location = location
  end

  attr_reader :age
  attr_accessor :name, :location

end

class Developer < Person
  def write_code
    puts "TYPE TYPE TYPE"
  end

  def hire_for_job
    write_code
  end

end
