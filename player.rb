require_relative "element"
require_relative "history"

$possibleMoves = Array([Rock.new('Rock'), Paper.new('Paper'), Scissors.new('Scissors'), Lizard.new('Lizard'), Spock.new('Spock')])


class Player 
  attr_accessor :name, :history
  attr_accessor :possibleMoves

  def initialize(name, history)
    @name = name
    @history = history
  end

  def play()
    puts 'fail "This method should be overrideen"'
  end
end

class StupidBot < Player 
  def play()
    return $possibleMoves[0]
  end
end

class RandomBot < Player 
  def play()
    return $possibleMoves[rand(5)]
  end
end

class IterativeBot < Player 
  attr_accessor :lastMove

  def initialize(name, history)
    super(name, history)
    @lastMove = 0
  end

  def play()
    nextMove = @lastMove
    @lastMove += 1
    if @lastMove == 5
      @lastMove = 0
    end
    return ($possibleMoves[nextMove])
  end
end

class LastPlayBot 
  attr_accessor :currentMove
  def initialize(name, history)
    super(name, history)
    @currentMove = 0
  end
  
  def play()
    return $possibleMoves[1]
  end
end



class Human < Player
  attr_accessor :possibleMoves

  # def initialize(name, history)
  #   super(name, history)
  #   @possibleMoves = Array([Rock.new, Paper.new, Scissors.new, Lizard.new, Spock.new])
  # end
  
  def play()
    while
      puts "(1) Rock
      (2) Paper
      (3) Scissors
      (4) Lizard
      (5) Spock
      Enter your move: "
      chosenMove = gets.to_i
      if chosenMove < 1 || chosenMove > 5
        puts "Invalid move - try again"
      else
        return $possibleMoves[chosenMove - 1]
      end
    end
  end
end
