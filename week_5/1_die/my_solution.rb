# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a number of sides for a die
# Output: the value of the roll.
# Steps: first intialize sides and set argument error for less than 1
#next define sides method based on what we initialize.
# use the random method to get a number within the boundaries of the sides that we have
#put in to the class.


# 3. Initial Solution
# class Die
#   def initialize(sides)
#     @sides = sides
#     	if sides<1
#     		raise ArgumentError.new("Less than 1 side, not possible")
#     	end

#   end

  
#   def sides
#   	 @sides #all we need to do is return the number sides that we have given.
    
#   end
  
#   def roll
#     rand(1..@sides)
#   end
# end




#4. Refactored Solution
class Die
  def initialize(sides)
    
    	raise ArgumentError.new, "Less than 1 side, not possible" if sides < 1 #got rid of the if statment.
    	@sides = sides

  end

  
  def sides
  	 @sides #all we need to do is return the number sides that we have given.
    
  end
  
  def roll
    rand(@sides)+1 # we need the + 1 here in order to make sure we do not have 0 as the number of sides
    #also this will allow 6 to be a result.
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(6)
puts die.sides == 6
puts die.roll()




# 5. Reflection 
#this was a fun challenge, it took a lot of research to figure out, and some help from others.
#I found that the biggest challenge here was understanding the #rand part of the method. I am still a bit
# confused as to why we have to add the plus 1 to the roll method. I get that it prevents a 0 but
#I dont understand why we cant get a value of 6 without it either. Does it have to do with the set being from
# 0-6 instead of 1-6? Thats my best guess.




