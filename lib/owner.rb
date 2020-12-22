class Owner

  @@all=[]

  attr_reader :name, :species
  attr_accessor

def initialize(name)
  @name=name
  @species="human"
  @@all << self
end
#initializes with species set to human

def say_species
 "I am a human."
end

def self.count
@@all.count
end

def self.all
  @@all
end

def self.reset_all
@@all.clear
end

def cats
Cat.all.select do |cat| 
cat.owner==self 
  end
  end


  def dogs
    Dog.all.select do |dog|
      dog.owner==self
    end
  end

  def buy_cat(name)
Cat.new(name,self)
  end

  def buy_dog(name)
    Dog.new(name,self)
    end

    def walk_dogs
dogs.each do |dog|
  dog.mood="happy"
end

    end

    def feed_cats

      cats.each do |cat|
        cat.mood="happy"
      end
    end

    def sell_pets
      pets=cats+dogs
      pets.each do |pet|
        pet.mood="nervous"
        pet.owner=nil
      end
    end

    def list_pets
      "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
    end
  
  end


