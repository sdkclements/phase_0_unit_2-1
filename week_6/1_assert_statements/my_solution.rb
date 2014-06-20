# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement



# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# the pseudo code above "assert" checks if the name "bettysue and billyboob exist"
#if the code does not yeild "bettysue" then the assertion will raise a false value.
# 3. Copy your selected challenge here

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

def assert
  raise "Assertion failed!" unless yield
end



# 1. DRIVER TESTS GO BELOW THIS LINE

 die = Die.new(6)
# puts die.sides == 6
# puts die.roll()


# 4. Convert your driver test code from that challenge into Assert Statements

assert {die.sides <= 4 } #this one can fail and raise an error
assert {die.roll <=6} # this one will alwawys work.



# 5. Reflection
