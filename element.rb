class Element 
  attr_accessor :name
  attr_accessor :lines
  
  def initialize(name)
    @name = name
  end

  def compare_to(rightElement)
    puts 'fail "This method should be overridden'
  end
end

class Rock < Element
  def compare_to(rightElement)
    case rightElement.name
    when 'Scissors' 
      line = "Rock crushes Scissors"
      result = "Win"
    when 'Paper'
      line = "Paper covers Rock"
      result = "Lose"
    when 'Spock'
      line = "Spock vaporizes Rock"
      result = "Lose"
    when 'Lizard'
      line = "Rock crushes Lizard"
      result = "Win"
    when self.name
      line = "#{self.name} equals #{self.name}"
      result = "Tie"
    end
    return "#{line}, #{result}"
  end

end

class Paper < Element
  def compare_to(rightElement)
    case rightElement.name
    when 'Scissors' 
      line = "Scissors cut Paper"
      result = "Win"
    when 'Rock'
      line = "Paper covers Rock"
      result = "Lose"
    when 'Spock'
      line = "Paper disproves Spock"
      result = "Win"
    when 'Lizard'
      line = "Lizard eats Paper"
      result = "Lose"
    when self.name
      line = "#{self.name} equals #{self.name}"
      result = "Tie"
    end
    return "#{line}, #{result}"
  end
end

class Scissors < Element
  def compare_to(rightElement)
    case rightElement.name
    when 'Paper'
      line = "Scissors cut Paper"
      result = "Win"
    when 'Rock' 
      line = "Rock crushes Scissors"
      result = "Lose"
    when 'Spock'
      line = "Spock smashes Scissors"
      result = "Lose"
    when 'Lizard'
      line = "Scissors decapitate Lizard"
      result = "Win"
    when self.name
      line = "#{self.name} equals #{self.name}"
      result = "Tie"
    end
    return "#{line}, #{result}"
  end
end

class Lizard < Element
  def compare_to(rightElement)
    case rightElement.name
    when 'Scissors' 
      line = "Scissors decapitate Lizard"
      result = "Lose"
    when 'Rock'
      line = "Rock crushes Lizard"
      result = "Lose"
    when 'Spock'
      line = "Lizard poisons Spock"
      result = "Win"
    when 'Paper'
      line = "Lizard eats Paper"
      result = "Win"
    when self.name
      line = "#{self.name} equals #{self.name}"
      result = "Tie"
    end
    return "#{line}, #{result}"
  end
end

class Spock < Element
  def compare_to(rightElement)
    case rightElement.name
    when 'Scissors' 
      line = "Spock smashes Scissors"
      result = "Win"
    when 'Rock'
      line = "Spock vaporizes Rock"
      result = "Win"
    when 'Paper'
      line = "Paper disproves Spock"
      result = "Lose"
    when 'Lizard'
      line = "Lizard poisons Spock"
      result = "Lose"
    when self.name
      line = "#{self.name} equals #{self.name}"
      result = "Tie"
    end
    return "#{line}, #{result}"
  end
end