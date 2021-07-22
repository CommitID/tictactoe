require_relative"./board"
class Show
  def show_board(board)
  
    puts "   __1__ __2__ __3__"
    puts "A |  #{board.array_squares[0].value}  |  #{board.array_squares[1].value}  |  #{board.array_squares[2].value}  |"
    puts "  |_____|_____|_____|"
    puts "B |  #{board.array_squares[3].value}  |  #{board.array_squares[4].value}  |  #{board.array_squares[5].value}  |"
    puts "  |_____|_____|_____|"
    puts "C |  #{board.array_squares[6].value}  |  #{board.array_squares[7].value}  |  #{board.array_squares[8].value}  |"
    puts "  |_____|_____|_____|"
    
  end 
end 
