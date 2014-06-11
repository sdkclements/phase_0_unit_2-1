# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

# Create a method `get_grade` that accepts an `Array` of test scores.  Each score in the array should be between `0` and `100`, where
# `100` is the max score.

# Compute the average score and return the letter grade as a `String`, i.e., `'A'`, `'B'`, `'C'`, `'D'`, or `'F'`.
# require_relative 'my_solution'
def get_grade (array)
	get_grade = (array[0].to_i + array[1].to_i + array[2].to_i) / array.length
	
case get_grade
	  when 90..100
	   "A"
	  when 80..90
       "B"
      when 70..80
       "C"
      when 60..70
       "D"
      when 0..60
       "F"
      else
     "Error"
      end
    end

    # already learned about this way of using cases during a GPS session! its very helpful.

# describe 'get_grade' do
#   let(:arrayA) { [100,90,100,99,99]}
#   let(:arrayB) { [80,90,80,89,98]}
#   let(:arrayC) { [70,80,70,79]}
#   let(:arrayD) { [60,67,70,63]}
#   let(:arrayF) { [50,40,0,99,9]}
  
#   it 'is defined as a method' do
#     defined?(get_grade).should eq 'method'
#   end
#   it 'returns "A" when the average is >= 90' do
#     get_grade(arrayA).should eq "A"
#   end
#   it 'returns "B" when the average is >= 80' do 
#     get_grade(arrayB).should eq "B"
#   end
#   it 'returns "C" when the average is >= 70' do
#     get_grade(arrayC).should eq "C"
#   end
#   it 'returns "D" when the average is >= 60' do
#     get_grade(arrayD).should eq "D"
#   end
#   it 'returns "F" when the average is < 60' do
#     get_grade(arrayF).should eq "F"
#   end
  
# end



# 3. Refactored Solution

def get_grade (array)
	
get_grade = array.inject(:+)/ array.size	
case get_grade
	  when 90..100
	   "A"
	  when 80..90
       "B"
      when 70..80
       "C"
      when 60..70
       "D"
      when 0..60
       "F"
      else
     "Error"
      end
    end
#the inject method allows you to simplify this code by a large degree.
# 4. Reflection 