# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge myself.

# 2. Pseudocode

# Input: Enter a number to be used for a guessing game
# Output: output should return whether the number is correct, high or instead too low.
# Steps: 
#first  initialized answer
#next write code for guess being high, then low, then correct.
#Write solved? maintaining that @guess == @answer
# this will make it so that the correct guess will equal answer and hence true.


# 3. Initial Solution

# class GuessingGame
	

#   def initialize(answer)
#     @answer = answer
   
#   end
  
#   def guess(guess)
#   	@guess = guess

#   	if guess > @answer 
#   		:high

#   	elsif guess < @answer 
#   		:low
  	
#   	else 
#   		:correct
  	
#   	end
#   end


#   # Make sure you define the other required methods, too

# def solved? 
	
#  @guess == @answer ? true : false
# 	end

# end

# 4. Refactored Solution
class GuessingGame
	

  def initialize(answer)
    @answer = answer
   
  end
  
  def guess(guess)
  	@guess = guess

  	if guess > @answer 
  		:high

  	elsif guess < @answer 
  		:low
  	
  	else 
  		:correct
  	
  	end
  end


  # Make sure you define the other required methods, too

def solved? 
	
 @guess == @answer ? true : false
	end

end

# mostly I refractored as I went.
# Could not find much to simplify.



# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(10)

p game.solved? == false
p game.guess(2) == :low
p game.guess(30) == :high

#trying a drive code that is wrong
p game.guess(50)== :low #works

#this drive code type didnt work out: cant figure out why....
# game = GuessingGame.new rand(100)
# last_guess  = nil
# last_result = nil

# until game.solved?
#   unless last_guess.nil?
#     puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
#     puts ""
#   end

#   print "Enter your guess: "
#   last_guess  = gets.chomp.to_i
#   last_result = game.guess(last_guess)
# end

# puts "#{last_guess} was correct!"




# 5. Reflection 
#I did a decent amount of research online before this challenge. I wrote some code that works however i feel like i could redo the problem using
# a case methodology. Like was used for the letter grade challenge.
#*****I still am a decent bit confused about when to use the intilize method, when its needed etc.

# What parts of your strategy worked? What problems did you face?
# with a problem this simple, it is important to not get bogged down by making the problem too complex. 
#Trust yourself that the code will work, getting around a self-confidence barrier helped.
# What questions did you have while coding? What resources did you find to help you answer them?
#I felt like i could simplify the @guess into one line, but when i tried it didnt work out.
# Did you learn any new skills or tricks? Learned how to work with '?' to work with boolean inputs
# For the first part : "http://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby"was helpful.
# How confident are you with each of the Learning Competencies? I feel mostly confident with the work.
# Which parts of the challenge did you find tedious? It seems like a useful tool to understand how a simple program is written.
