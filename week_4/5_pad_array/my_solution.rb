# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input? The input should be any array.
# What is the output? (i.e. What should the code return?) The output should be the array, and the pad, whatever the user decides to pad the array with, 0's or anything of their choice.
# What are the steps needed to solve the problem? This is the first time that we really need to implement a class structure, this wil allow us to use multiple methods and when we call the object(the class) it will
#be able to utilize whatever we enter in. 


# 2. Initial Solution
# class Array
# 	def pad(value,addition=nil)
# 		if value <= self.length
# 			return self
# 		else
# 			array_out = self.dup
# 			while value > array_out.length
# 				array_out.push(addition)
# 				value-=1
# 			end
# 			return array_out
# 		end
# 	end
# 	def pad!(value,addition=nil)
# 		if value <= self.length
# 			return self
# 		else
# 			array_out = self
# 			while value > array_out.length
# 				array_out.push(addition)
# 				value-=1
# 			end
# 			return array_out
# 		end
# 	end
# end



# 3. Refactored Solution After talking with a few people about this project I decided to go a differnt route to make it cleaner.
class Array
	def pad(value, addition=nil)
		if (size < value)
			self + [addition] * (value - size)
		else
			return self
		end
	end

	def pad!(value, addition=nil)
		if (size < value)
			fill(addition, size..value)
		else
			return self
		end
	end
end


# 4. Reflection 
#there are many ways to go about problems like these, it really depends on your mindset about the problem in general. This particular challenge made me wonder if at bootcamp we 
#will learn to code more like one another or if instead we will continue to use varied means to solve problems.