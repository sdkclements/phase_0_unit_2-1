# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself:

# 2. Pseudocode
#MY OLD DIE CLASS:
# class Die
#   def initialize(sides)
    
#     	raise ArgumentError.new, "Less than 1 side, not possible" if sides < 1 #got rid of the if statment.
#     	@sides = sides

#   end

  
#   def sides
#   	 @sides #all we need to do is return the number sides that we have given.
    
#   end
  
#   def roll
#     rand(@sides)+1 # we need the + 1 here in order to make sure we do not have 0 as the number of sides
#     #also this will allow 6 to be a result.
#   end
# end

# Input: any number of symbols
# Output:
# Steps:


# 3. Initial Solution

# class Die
#   def initialize(labels)
#   		@labels=labels
#   end

#   def sides
#   	 sides = @labels.length
  	
#   end

#   def roll
#   	@labels.shuffle.first


#   end
# end



# 4. Refactored Solution
class Die
  def initialize(labels)
  		@labels=labels
  end

  def sides
  	 @labels.length #taking out sides eliminates clutter.
  	
  end

  def roll
  	@labels.shuffle.sample  #taking the first character might make it less random(not sure about this) but sampling from the whole
  	#thing can get around that.


  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die.sides
puts die.roll






# 5. Reflection 
# Getting into the DIE problems is really helping me learn more methods, and seeing what they can do. For a while i was stuck with trying to figure
# out how to get a random selection from an array. I needed to go to the RUBY DOCs to find one that would work. Sample is very useful when using non-integers.
