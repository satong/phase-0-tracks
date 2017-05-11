# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Release 1: require_relative allows us to access the linked file in the location relative to the current file
require_relative 'state_data'

class VirusPredictor

  attr_reader :population_density, :population, :state
  # Release 3: Initializes an instance requiring 3 arguments (state, population and population density) which are then stored as attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Release 3: runs the predicted_deaths and speed_of_spread methods for the given arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Release 3: returns the number_of_deaths based on population and population_density and prints out information for the associated state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Release 3: returns the speed based on population_density and prints out information
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end
# Release 4: Implement report for all 50 states
STATE_DATA.each do |k, v|
  states = VirusPredictor.new(k,v[:population_density], v[:population])
  states.virus_effects
end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
=> When using the hashrocket, strings are stored as keys. Since strings are mutable, Ruby needs to store each string you mention throughout your source code in it's separate entity
vs
: When using colons, symbols are stored as keys. Symbols are  "immutable strings" which means the same symbol is stored as the same entity when referenced many times throughout the source code

What does require_relative do? How is it different from require?
require_relative modifies the loadpath to access the linked file in the location relative to the current file vs require assumes that the code will be run from a particular place in the file system.

What are some ways to iterate through a hash?
You can use loops to iterate through a hash

When refactoring virus_effects, what stood out to you about the variables, if anything?
both methods that are called in virus_effects do not actually need arguments because we have already stored those variables as attributes

What concept did you most solidify in this challenge?
I've clarified my understanding of attr_reader usage and benefits.
=end
