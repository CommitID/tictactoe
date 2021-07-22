require_relative './square'
require 'pry'
require_relative './player'

class Board 
  attr_accessor :array_squares, :count_turn
  
  def initialize
    @array_squares = []
    @count_turn = 0
    key_case = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    key_case.each do |key|
      @array_squares << Square.new(" ",key)
    end 
  end 
  def play_turn(player)
    good_case = false 
    while !good_case 
      puts 'Sur quelle case veux-tu jouer ? Saisis une valeur parmi A1, A2, A3, B1, B2, B3, C1, C2, C3'
      print '>'
      case_player = gets.chomp #doit rentrer A1, ou A2 ... etc
      @array_squares.each_with_index do |square, index|
        if square.key_board == case_player
          if square.value == " "
            square.value = player.value
            good_case = true
            @count_turn += 1
          else 
            puts "La case est déjà prise"
          end  
        end 
      end
    end  
  end 

  def victory?
    victory = []
    victory << (@array_squares[6].value + @array_squares[7].value + @array_squares[8].value).to_s
    victory << (@array_squares[0].value + @array_squares[1].value + @array_squares[2].value).to_s
    victory << (@array_squares[3].value + @array_squares[4].value + @array_squares[5].value).to_s
    victory << (@array_squares[0].value + @array_squares[3].value + @array_squares[6].value).to_s
    victory << (@array_squares[1].value + @array_squares[4].value + @array_squares[7].value).to_s
    victory << (@array_squares[2].value + @array_squares[5].value + @array_squares[8].value).to_s
    victory << (@array_squares[0].value + @array_squares[4].value + @array_squares[8].value).to_s
    victory << (@array_squares[2].value + @array_squares[4].value + @array_squares[6].value).to_s
    status = "On Going"
    victory.each_with_index do |value, index|
      if value == "XXX" || value == "OOO"
        status = true
      elsif count_turn == 9
        status = "Nul"
      end
    end
    return status
  end 
end 
# amelie = Player.new("Amelie", "X")
# paul = Player.new("Paul", "O")
# board = Board.new