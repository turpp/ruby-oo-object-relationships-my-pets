require 'pry'

class Owner
  # code goes here
attr_reader :name,:species

@@all=[]

  def initialize (name,species="human")
    @name = name
    @species=species
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    
    i_am ="I am a #{@species}."
    i_am
  end

  def buy_cat(name)
    Cat.new(name,self)
  end

  def buy_dog(name)
    Dog.new(name,self)
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    # binding.pry
    #returns a collection of all the cats the owner owns
    array = Cat.all
    array.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    # binding.pry
    #returns a collection of all the cats the owner owns
    array = Dog.all
    array.select do |dog|
      dog.owner == self
    end
  end

  def walk_dogs
    #what I want
    #calls on an instance owner
    #all of the owners dogs go for walk
    #all the owners dogs mood changes to happy

    owner_dogs = self.dogs
    owner_dogs.each do |dog|
      dog.mood=("happy")
    end

  end

  def feed_cats
    #what I want
    #calls on an instance owner
    #all of the owners dogs go for walk
    #all the owners dogs mood changes to happy

    owner_cats = self.cats
    owner_cats.each do |cat|
      cat.mood=("happy")
    end

  def sell_pets
      owner_dogs = self.dogs
    owner_dogs.each do |dog|
      dog.mood=("nervous")
    end

      owner_cats = self.cats
    owner_cats.each do |cat|
      cat.mood=("nervous")
    end


    owner_cats = self.cats
    owner_cats.each do |cat|
      cat.owner=(nil)
    end

    owner_dogs = self.dogs
    owner_dogs.each do |dog|
      dog.owner=(nil)
    end
  
    def list_pets
      owner_dogs = self.dogs
      owner_cats = self.cats

      "I have #{owner_dogs.count} dog(s), and #{owner_cats.count} cat(s)."
    end




  end



  end






end