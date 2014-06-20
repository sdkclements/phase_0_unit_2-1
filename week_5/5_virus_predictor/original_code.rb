# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative
# require_relative means that for the program to run it needs some source of data. In this case 'state_data' without this information
# the program would not have the necessary info to come to conclusions.
#
require_relative 'state_data'
#What is going on with this hash? What does it have in it? This state_data hash is basically a hash of states and information about the states.
# each state has its own separate hash detailing pertinent information. The states each have a key and value the state is the key and the information is the value
# then within the individual state hashes we have the : syntax instead of the => which makes each "population_density" a symbol which can then be accessed.

# class VirusPredictor

#   def initialize(state_of_origin, population_density, population, region, regional_spread) # the initialize method, initializes all of the variables we will use
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#     @region = region
#     @next_region = regional_spread
#   end

#   def virus_effects  #HINT: What is the SCOPE of instance variables? # instance variables are specific to their objects they reside in.
#     predicted_deaths(@population_density, @population, @state)# the virus_effects is dependent on the predicted deaths and the speed it spreads.
#     speed_of_spread(@population_density, @state)
#   end

# #This method ensures that all of the following methods will be private and not accessible for outside methods
#   # this is used to force access to predicted deaths, speed of spread, through another function. the ones below. If Private were above 
#   # def virus_effects, then the virus_effects, could not utilize information from the data sheet.
#   private  

#   # this method uses the data from population density, to indicate the number of expected deaths.
# # the greater the density the greater the predicted number of deaths.
#   def predicted_deaths(population_density, population, state) 
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor  
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor  # Change this with a case method
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else 
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end
# # method shows that the greater the population density the shorter the time until the virus spreads. # this code definitley use a case method!
#   def speed_of_spread(population_density, state) #in months
#     speed = 0.0

#     if @population_density >= 200 
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else 
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end


#====================REFACTOR===========================================

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread) 
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects  
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end


 # private  

  
  def predicted_deaths(population_density, population, state) 
 
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor  
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor  
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) 
    speed = case @population_density

    when 0...49 then 2.5
  
    when 50...99 then 2

    when 100...149 then 1.5

    when 150...200 then 1 
      
    else 0.5

    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


  
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# = VirusPredictor.new("United States", STATE_DATA[0...49][:population_density], STATA_DATA[0...49][:population], STATE_DATA[0...49][:region], STATE_DATA[0...49][:regional_spread]) THis is what i tried first....no way it works dumb!
# need to iterate through STATE_DATA
STATE_DATA.each {|state_name, state_char|
  all_states= VirusPredictor.new(state_name, state_char.values[0], state_char.values[1], state_char.values[2], state_char.values[3])
  all_states.virus_effects
}


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
# alaska.virus_effects