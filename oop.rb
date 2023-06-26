# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name, :color

    def initialize(name, color = "Silver")
        @name = name
        @color = color
    end

    def color_change(new_color)
        @color = new_color
        #the line below is extra. I added it to make sure my color change method was
        #working. You didn't ask for it though so I've commented it out.
        # puts "My color has changed to #{new_color}"
    end

    def say(input_phrase)
        "*~*#{input_phrase}*~*"
    end

end

unicorn1 = Unicorn.new("Shadowfax")
p unicorn1
p unicorn1.say("It's nice to meet you")
unicorn1.color_change("Purple")
p unicorn1

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :pet, :thirst

    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirst = true
        # puts "It is nice to meet you Mr. Harker, my name is #{name}, I do hope you enjoy your stay at my castle."
    end

    def drink
        @thirst = false
        # puts "Ahhh, now that was refreshing"
    end

end

vampire1 = Vampire.new("Vlad Dracula")
p vampire1.pet
vampire2 = Vampire.new("Count Likes-Cats", "Cat")
p vampire2
vampire1.drink
p vampire1

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :dragon_name, :rider_name, :color, :is_hungry, :counter

    def initialize(dragon_name, rider_name, color)
        @dragon_name = dragon_name
        @rider_name = rider_name
        @color = color
        @is_hungry = true
        @counter = 0
    end

    def eat
        @counter += 1
        @is_hungry = false if @counter >= 4
    end

end

puts 'Dragon Class Tests'
puts '=========================='

dragon1 = Dragon.new("Saphira", "Eragon", "Blue")
puts dragon1.dragon_name == 'Saphira'
puts dragon1.rider_name == 'Eragon'
puts dragon1.color == 'Blue'
puts dragon1.dragon_name == 'Saphira'

dragon1.eat
puts dragon1.is_hungry 
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
puts dragon1.is_hungry

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age

    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = 0
    end

    def is_adult
        @age >= 33
    end

    def is_old
        @age >= 101
    end

    def celebrate_birthday
        @age += 1
    end

    def has_ring
        @name == "Frodo"
    end

end

puts 'Hobbit Class Tests'
puts '=========================='

hobbit1 = Hobbit.new("Frodo", "Adventurous")

puts hobbit1.name
puts hobbit1.disposition
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.is_old
puts hobbit1.has_ring

hobbit1.celebrate_birthday
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.is_old

32.times {hobbit1.celebrate_birthday}
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.is_old

111.times {hobbit1.celebrate_birthday}
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.is_old

puts Hobbit.new("Samwise", "Brave").has_ring