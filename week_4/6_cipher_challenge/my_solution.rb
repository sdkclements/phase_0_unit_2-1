# U2.W4: Cipher Challenge

# I worked on this challenge with: Maddison Brusman, Sam Clements

# 1. Solution

# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

# def north_korean_cipher(coded_message) 
#   input = coded_message.downcase.split("") # Taking input from coded_message and making it all lower case and then splitting the coded message and putting it into an array 
#   decoded_sentence = []                    
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",  
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",             
#             "d" => "z"}   
      
#   input.each do |x| # each is iterating through characters in the input array
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? Because if the match is found than the cipher is not working
#     cipher.each_key do |y| # each_key is iterating through the key values (e.g. "e" through "d")
#       if x == y  # x is each character in the input arrray. y is each character in the keys of the hash
#         puts "I am comparing x and y. X is #{x} and Y is #{y}." # instuctional, take out later when refactoring
#         decoded_sentence << cipher[y] # decoded message in array format
#         found_match = true
#         break  # it's breaking here because at this point if cipher is decoded fully we have delt with only letters a - z.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # taking in account weird characters
#         decoded_sentence << " " # weird characers arent used as themselves they are translated into spaces. except for 
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # numbers don't change, not of interest to the cipher. Numbers stay the same
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # If a character is inputted that is not one already referenced to than it will return it as is.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") # turns decoded array into string
 
#   if decoded_sentence.match(/\d+/) # What is this matching? Look at Rubular for help. It is checking that
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # He's been known to exaggerate... so this reduces all numbers by a factor of 100, substituting the input numerical value with that value divided by 100
#   end  
#   return decoded_sentence # Returning the cipher     
# end

# Your Refactored Solution


def north_korean_cipher(coded_message) 
  input = coded_message.downcase.split("") # Taking input from coded_message and making it all lower case and then splitting the coded message and putting it into an array 
  decoded_sentence = []                    
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",  
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",             
            "d" => "z"}   
            
     cipher_korean = ("e".."z").to_a + ("a".."d").to_a   # ["e","f","g"..."d"]     
     
    decoded = []
                                                                     # go back 4 letters
     cipher_korean.each do |char|
           cipher_english = cipher_korean[cipher_korean.each_index { |char| (char - 4) } ]
           decoded << cipher_english
     end
     
     p decoded
      
  input.each do |x| # each is iterating through characters in the input array
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? Because if the match is found than the cipher is not working
    cipher.each_key do |y| # each_key is iterating through the key values (e.g. "e" through "d")
      if x == y  # x is each character in the input arrray. y is each character in the keys of the hash
        puts "I am comparing x and y. X is #{x} and Y is #{y}." # instuctional, take out later when refactoring
        decoded_sentence << cipher[y] # decoded message in array format
        found_match = true
        break  # it's breaking here because at this point if cipher is decoded fully we have delt with only letters a - z.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # taking in account weird characters
        decoded_sentence << " " # weird characers arent used as themselves they are translated into spaces. except for 
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # numbers don't change, not of interest to the cipher. Numbers stay the same
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # If a character is inputted that is not one already referenced to than it will return it as is.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("") # turns decoded array into string
 
  if decoded_sentence.match(/\d+/) # What is this matching? Look at Rubular for help. It is checking that
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # He's been known to exaggerate... so this reduces all numbers by a factor of 100, substituting the input numerical value with that value divided by 100
  end  
  return decoded_sentence # Returning the cipher     
end

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
#working with maddison was great, he was pretty knowledgeable and helped move the project along well.
 