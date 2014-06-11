# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? The input is any integer, for this purpose it should be integers with more than 3 numeric places. i.e >999
# What is the output? (i.e. What should the code return?) should return a string that represents the integers with commas added for readability
# What are the steps needed to solve the problem? 1. Convert the integer to a string 2. make sure it is more than 4 digits, otherwise you can return the same input calue. 3. calculate the number of needed commas.
#this is where division comes in. 4. Insert commas, then join the separated string back together. and print the string.


# 2. Initial Solution

# def separate_comma(integer)

# 	string = integer.to_s.split ('') #makes the integer a string so we can insert commas, making it readable
# 	division = string.length/3
# 		if string.length<4
# 			p integer.to_s					#first if/else if is used to find if the number needs to use this method.
# 		elsif string.length%3 == 0
# 			(division.to_i-1).times do |i| #every 3 spaces add a comma.
# 				string.insert(n, ',')
# 		end
# 			p string.join ("") #join the string back together again, inside of ""
# 		else 
# 				n = -4
				
# 				division.to_i.times do |i| # Start with -4 because it helps understand that we only need to use if more than 4 digits.
				
# 				string.insert(n, ',')
# 		end
# 				p string.join ("")
# 	end
# end

# 3. Refactored Solution

def separate_comma(integer)

	string = integer.to_s.split ('') #makes the integer a string so we can insert commas, making it readable
	division = string.length/3
		if string.length<4
			p integer.to_s					#first if/else if is used to find if the number needs to use this method.
		elsif string.length%3 == 0
			(division.to_i-1).times do |i| #every 3 spaces add a comma.
				string.insert(n, ',')
		end
			p string.join ("") #join the string back together again, inside of ""
		else 
				n = -4
				
				division.to_i.times do |i| # Start with -4 because it helps understand that we only need to use if more than 4 digits.
				
				string.insert(n, ',')
		end
				p string.join ("")
	end
end


# 4. Reflection 
#the biggest problem im having with this is that it seems like there should be a simpler, quicker solution, perhaps a built in method for which i should do this.
#Since I am having trouble finding a method to use besides the basic.length etc. I have to go step by step. I'll be coming back to this one.