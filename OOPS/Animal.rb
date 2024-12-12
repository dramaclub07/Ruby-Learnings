=begin
Create a base class Animal with a method make_sound. Then:
Create two subclasses Dog and Cat, where Dog implements make_sound as "Woof" and Cat implements make_sound as "Meow".
Write a method describe_animal in the base class that outputs a description of the animal (i.e., the animal's type and sound).
Instantiate objects of Dog and Cat, and call their describe_animal method.
=end

class Animal
    def make_sound
        begin 
            raise NotImplementedError, ("Subclass must implement make_sound ")
        rescue NotImplementedError => e
            puts e.message
        end
    end

    def describe_animal
        puts "This animal is a #{self.class} and it says #{self.make_sound}"
    end
end



class Dog < Animal
    def make_sound
        "woof!!"
    end
end

class Cat < Animal
    def make_sound
        "Meow"
    end
end

dog = Dog.new
cat = Cat.new
cat.describe_animal
dog.describe_animal

    
