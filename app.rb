require 'pry'
require_relative 'lib/game'

class App
  def perform
    puts "Bienvenue dans mon super Jeu de Morpion"
    puts "Quel est le prénom du premier joueur ?"
    print ">"
    name_1 = gets.chomp
    puts "Quel est le prénom du deuxieme joueur ?"
    print ">"
    name_2 = gets.chomp
    my_game = Game.new(name_1,name_2)
    while my_game.status == "On Going"
      my_game.turn 
    end 
    my_game.game_end
  end 
end 
App.new.perform
