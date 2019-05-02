class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def say_species
    "I am a #{@species}."
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

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |doge|
      doge.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |kitty|
      kitty.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fishy|
      fishy.mood = "happy"
    end
  end

  def sell_pets
    @pets[:fishes].each do |fishy|
      fishy.mood = "nervous"
    end
    @pets[:dogs].each do |doge|
      doge.mood = "nervous"
    end
    @pets[:cats].each do |kitty|
      kitty.mood = "nervous"
    end
    @pets.clear
  end
end
