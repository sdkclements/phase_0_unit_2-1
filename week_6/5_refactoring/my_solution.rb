# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution
# class CreditCard

# 	def initialize(numbers)
# 		raise ArgumentError, 'please provide 16 degit integer.' unless numbers.to_s.length === 16
# 		@numbers = numbers	
# 	end

# 	def check_card
# 		sum = 0
# 		i = 1
# 		@numbers.to_s.reverse.each_char do |c|
# 			n = c.to_i
# 			if i.even? 
# 				n *= 2
# 				if n > 9
# 					n_string = n.to_s
# 					n = n_string[0].to_i + n_string[1].to_i
# 				end
# 			end
# 			i += 1
# 			sum += n
# 		end
# 		puts sum
# 		return sum % 10 == 0 ? true : false 
# 	end

# end



# Refactored Solution
# First i want to say that although this code was a bit repetitive it was easy to understand by looking at it.
# first to refactor the argument error
def initialize(card_number)
		@card_number = card_number
		raise ArgumentError.new("Not a Credit Card Number") if @card_number.to_s.length != 16 @ # simpler than and or statement
	end

def check_card
	# we do not need to set the sum = 0 to begin with we can ignore that and we dont ened i to equal 1
	def ceck_card
		@numbers.to_s.reverse.each_char do {|c| c.to_i
			 if i.even? {
			 	if n *=2 > 9
			 		n.to_s.split('').map {|n|n.to_i}

			 	
			 	else	
						i += 1
					sum += n	 		

 			end
			
 			
end
		



# DRIVER TESTS GO BELOW THIS LINE
p CreditCard.new(4408041234567893).check_card === true
p CreditCard.new(4408041234567893).check_card
p CreditCard.new(4408041234567892).check_card === false





# Reflection 

# this was a fun challenge for me to work on. I enjoyed looking at someone else work and seeing how they thought about the program.
#combining differnt methods by differnt people seems very beneficial.
#someitmes using to much of my own work hindered the refactoring process.
# I also wondered how some of the integers changed from bit to bit.
#i didnt learn very many new tricks but learned how spacing out your code helps a lot.