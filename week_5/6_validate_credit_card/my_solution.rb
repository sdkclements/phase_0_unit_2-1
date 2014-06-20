# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: credit card number.
# Output: should be a true or false if it is a credit card number
# Steps: first make sure it is correct number of digits
#2 then initialze using the luhn algorithm to multiple every other number and then sum the digits
#3 after this you check the last number to use the %10


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard
# 	def initialize(card_number)
# 		@card_number = card_number
# 		raise ArgumentError.new("Not a Credit Card Number") if @card_number.to_s.length < 16 || >16
# 	end
# def check_card
# 	@card_number = @card_number.to_s.split

# 	 @card_number= @card_number.map{|i| i.to_i}
# 	  (@card_number.length) {i
# 	  	if i%2 == 0}

# 	  		@card_number[i]+= @card_number[i]  # this makes sure it adds the numbers corrects when they are every other number



# 1. DRIVER TESTS GO BELOW THIS LINE




# 4. Refactored Solution

class CreditCard
	def initialize(card_number)
		@card_number = card_number
		raise ArgumentError.new("Not a Credit Card Number") if @card_number.to_s.length != 16 @ # simpler than and or statement
	end



	def check_card


		@card_number = @card_number.to_s.split('').map { |digit| digit.to_i } # made this more readable

		(@card_number.length).times {|i|

			if i % 2==0

				@card_number[i] += @card_number[i]

			end
		}

		

		@card_number = @card_number.map {|i|
			
			i.to_s.length > 1 ? i.to_s.split('').map{|x| x.to_i} : i # this adds both digits of a number which is summed to be greater than 9 aka 2 diigits

		}


		

		@card_number.flatten!
		
		@card_number.inject(:+) % 10 == 0  # Finally at the modulous 10
	end
end


def assert
	raise "Assertion failed!" unless yield
end




# 1. DRIVER TESTS GO BELOW THIS LINE
cc = CreditCard.new(4563960122001999)
p cc.check_card == true





# 5. Reflection


# this one was very difficult for me. I had to do a bunch of research for this project and had to use stack overflow as well as 
# help from others a few times. I just had a difficult time jumping around from section to section with this one.
# i could use some clarification and more reading on this subject. 
