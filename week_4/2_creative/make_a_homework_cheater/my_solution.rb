# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

def essay_writer(title, topic, date, thesis_statment, pronoun)
	date = date.to_s
	if pronoun == male : "he"
	else pronoun : "she"


	sentence = "#{title}:
		During #{date.to_s},#{topic}greatly impacted history. That is what made #{pronoun}, so important. I pursued #{topic}, because of the extreme affect on the time #{pronoun} had.
		#{title}, is known best for #{thesis_statment}. #{pronoun}, had a an important contribution to history."
return sentence
end


#Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. 
# His most important contribution to history is that he founded the Tokugawa period, a peaceful 
# time that lasted over 200 years. Tokugawa's contribution is important.


# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
p essay_writer ("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", male)

