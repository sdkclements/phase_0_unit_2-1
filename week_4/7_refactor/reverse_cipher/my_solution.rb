# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? Turning the whole alphabet into an array.
# 2. How does the rotate method work? What does it work on? The rotate method changes the begining point in the array, here it does it by 4 places
# this means that d will now be the first letter in the array.
# 3. What is `each_char` doing? It is making each character in an entered string separated. This allows for the cipher to work on each letter.
# 4. What does `sample` do? sample takes a random piece from the spaces array. thus every space will see a differnt special character in no particular order.
# 5. Are there any other methods you want to understand better? No, these are pretty standard and understandable.
# 6. Does this code look better or worse than your refactored solution. This code looks cleaner than mine.
#    of the original cipher code? What's better? What's worse?
# 7. Is this good code? What makes it good? What makes it bad? This code is good, it is simple and effective, there is not much repetition.
#one could perhaps change the if>elsif>else into a single line of code, but that would make it more difficult to totally comprehend.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
#looking at this code was super helpful for me. It really showed me what was going on behind the scenes. Knowing how to use a plethora of methods
# can really help ease you into the process of creating useful and concise code.

