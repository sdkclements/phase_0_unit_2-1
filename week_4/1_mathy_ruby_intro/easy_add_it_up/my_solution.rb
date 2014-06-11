# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input? 
	#The input for the first segment is two differnt arrays with numbers.
# What is the output? (i.e. What should the code return?) 
	#The output of the method should be the sum of the two numbers
# What are the steps needed to solve the problem?
# Steps for sum of array:
	#1. define the method in which the argument taken is a single array.
	#2. set the method "total" to zero
	#3. make the method iterate through the array
	#4. add each number in the array
	#5. display the sum of the array.

# sentence_maker:
#input is an array of a strings and/or numbers
#the output should be the array joined as a sentence
# the steps:
#1. define the method that takes the argument of strings and numbers
#2. incorporate all of the strings/numbers together.
#3. Make sure grammar is correct, add capitalization and period.
#4.return the complete sentence.

# 2. Initial Solution

# def total (array)
	
#   	sum = 0
#   	array.each {|a| sum += a}
# 	puts sum
  
# end

# def sentence_maker (array)
#   sentence = ''
#   sentence = array.each {|a| sentence += a}.join(" ")
#   sentence = sentence.to_s
#  sentence[0] = sentence[0].capitalize

#   return sentence + "."
# end


# describe 'total' do
#   let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
#   let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7] }



#   it "is defined as a method" do
#     defined?(total).should eq 'method'
#   end

#   it "requires a single argument" do
#     method(:total).arity.should eq 1
#   end

#   it "returns the correct total of array 1" do
#     total(array_1).should eq 27
#   end

#   it "returns the correct total of array 2" do
#     total(array_2).should eq 43
#   end
# end

# describe 'sentence_maker' do
#   let(:first_sentence) {["all", "my", "socks", "are", "dirty"]}
#   let(:second_sentence) {["alaska", "has", "over", 586, "thousand", "miles"]}

#   it "is defined as a method" do
#     defined?(sentence_maker).should eq 'method'
#   end

#   it "requires a single argument" do
#     method(:sentence_maker).arity.should eq 1
#   end

#   it "returns the grammatically correct sentence of the first sentence" do
#     sentence_maker(first_sentence).should eq "All my socks are dirty."
#   end

#   it "returns the grammatically correct sentence of the second sentence" do
#     sentence_maker(second_sentence).should eq "Alaska has over 586 thousand miles."
#   end
# end





# 3. Refactored Solution
def total (array)
  sum = 0
  array.each {|a| sum += a}
 return sum
  # when i didnt use return it would automatically reset to 0 after giving me the correct sum. 
#this made i fail the tests because it saw the 0 sum.
end

def sentence_maker (array)
  sentence = ''
  sentence = array.each {|a| "#{sentence}#{a}" }.join(" ")
  #sentence = sentence.to_s
 sentence[0] = sentence[0].capitalize

  return sentence + "."
end
#the original solution does not allow the fixnum conversion, thus you need the string concatenation to work with the numbers

# 4. Reflection :
# What parts of your strategy worked? What problems did you face?
# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Did you learn any new skills or tricks?
# How confident are you with each of the Learning Competencies?
# Which parts of the challenge did you enjoy?
#Which parts of the challenge did you find tedious?

