require_relative "./board"
require_relative "./player"
require_relative "./show"

require 'pry'

class Game 
  attr_accessor :player1, :player2, :current_player, :status, :board, :all_players
  def initialize(name1,name2)
    @player1 = Player.new(name1, "X")
    @player2 = Player.new(name2, "O")
    @board = Board.new
    @status = "On Going"
    @all_players = [player1, player2]
    @current_player = @player1 
  end 
  def turn
    Show.new.show_board(@board)
    puts "Au tour de #{current_player.name} de jouer"
    @board.play_turn(@current_player)
    @status = @board.victory?()
      if @current_player == @player1
        @current_player = @player2
      else 
        @current_player = @player1
      end 
    
  end

  def new_round
    @board = Board.new
  end

  def game_end
    if @status == true
      puts "#{@current_player.name} a gagné"
    elsif @status == "Nul"
      puts "Match nul, la partie est finie"
    end
  end   
end 