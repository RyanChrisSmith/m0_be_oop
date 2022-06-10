# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end
  def say(verb)
    p "Would you like to #{verb}?"
  end
end

uni1 = Unicorn.new("spicy")
p uni1
uni1.say("run")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
  attr_reader :pet

  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end
  def drink
    @thristy = false
  end
end

pet1 = Vampire.new("Jimmy")
p pet1

pet2 = Vampire.new("John", "cricket")
p pet2

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  def initialize (name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @hungry = true
    @times_eaten = 0
  end
  def eat
    @times_eaten += 1
    if @times_eaten >= 4
      @hungry = false
    end
  end
end

drag1 = Dragon.new("Johnny", "Luke" , "blue")
p drag1
drag1.eat
drag1.eat
drag1.eat
drag1.eat
drag1.eat
p drag1


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
  def initialize (name, disposition, age = 0)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = false
    @is_old = false
    @has_ring = false
    if @name == "Frodo"
      @has_ring = true
    end
  end
  def celebrate_birthday
    @age += 1
    if @age >= 33
      @is_adult = true
    end
    if @age >= 101
      @is_old = true
    end
  end
end

hob1 = Hobbit.new("Lucky", "happy", 100)
p hob1
hob1.celebrate_birthday
p hob1
