require_relative "element"   # uncomment to load element.rb
require_relative "player"    # uncomment to load player.rb 
require_relative "history"   # uncomment to load history.rb

######################################### 	
#     CS 381 - Programming Lab #3		#
#										#
#  < Carlos Burell >				 	#
#  < burellc@oregonstated.edu >        	#
#										#
#########################################



def isChoiceValid(input)
		if input < 0 || input > 5
			return false
		else
			return true
		end
end

def playerSelection()
		puts 'Please choose two players:'
		puts '(1) StupidBot'
		puts '(2) RandomBot'
		puts '(3) IterativeBot'
		puts '(4) LastPlayBot'
		puts '(5) Human'
		print 'Select player 1: '
		choice1 = gets.chomp.to_i
		print 'Select player 2: '
		choice2 = gets.chomp.to_i
		if (isChoiceValid(choice1) && isChoiceValid(choice2))
			return true
		else
			puts "Invalid choice(s) - start over\n\n" 
			return false
		end
end



def game(rounds)
	puts "Hello! Welcome to Rock, Paper, Scissors, Lizard, Spock!"
	while !(playerSelection())
		playerSelection()
	end
	
end


# Main Program (should be last)
n_rounds = 5
# call to kick off the game
game(n_rounds)