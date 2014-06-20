def bakery_num(num_of_people, fav_food) # defines method bakery_num that takes the quantity of people and type of food
      my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # my_list # of people each item can feed
      pie_qty = 0 # sets all quantities to be baked to 0.
      cake_qty = 0
      cookie_qty = 0
      
    #   has_fave = false # forces input to have fav_food to be true.
    
    #   if my_list.include?(fav_food) # iterates through array my_list to find if fav_food is equal to any elements.
    #     if k == fav_food
    #       has_fave = true # If so, has_fave is true
    #       fav_food = k # KO this.
    #       raise ArgumentError.new("You can't make that food") if has_fave == false
    #     end
    
    raise ArgumentError.new("You can't make that food") if my_list.include?(fav_food) != true
             # If fav_food doesn't match and elements of my_list, then raise error
    # else
      fav_food_qty = my_list[fav_food] # returning the 0 position of the array taken from the my_list hash
       if num_of_people % fav_food_qty == 0 # if there's no remainder,
          num_of_food = num_of_people / fav_food_qty
          return "You need to make #{num_of_food} #{fav_food}(s)."
       else num_of_people % fav_food_qty != 0
            while num_of_people > 0
              if num_of_people / my_list["pie"] > 0
                pie_qty = num_of_people / my_list["pie"]
                num_of_people = num_of_people % my_list["pie"]
              elsif num_of_people / my_list["cake"] > 0
                cake_qty = num_of_people / my_list["cake"]
                num_of_people = num_of_people % my_list["cake"]
              else
                cookie_qty = num_of_people
                num_of_people = 0
              end
            end
         return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  end
end
#-----------------------------------------------------------------------------------------------------

# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
#p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 