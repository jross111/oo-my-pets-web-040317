
class Owner

  attr_accessor :name, :pets
  attr_reader :species

  ALL = []

  def self.all
    ALL
  end

  def initialize(species, name = "")
    @species = species
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    ALL << self
  end

  def self.reset_all
    ALL.clear
  end

  def self.count
    ALL.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def count
    @pets.each do |pet_type, array|
      array.length
    end
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
      end
      value.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
