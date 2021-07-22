require 'pry'
class Player
  attr_accessor :name, :value
  @@all_players = []
  def initialize(name_to_save, value_to_save)
    @name = name_to_save
    @value = value_to_save
    @@all_players << self 
  end 
  def self.all 
    return @@all_players
  end 
end 
amelie = Player.new("Amelie", "X")
paul = Player.new("Paul", "O")

