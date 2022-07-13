require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# binding.pry

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  # puts spicy_foods
  arr_foods = spicy_foods.map do |food|
                food[:name]
              end

  arr_foods
end

# get_names(spicy_foods)

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
  arr_foods = spicy_foods.filter do |food|
                food[:heat_level] > 5
              end

  # binding.pry
  arr_foods
end

# spiciest_foods(spicy_foods)

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here

  spicy_foods.map do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: " + "🌶" * food[:heat_level]
  end

end

# print_spicy_foods(spicy_foods)

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here

  cuisine_hash = spicy_foods.find do |food|
                    food[:cuisine] == cuisine
                  end

  # cuisine_hash = spicy_foods.filter do |food|
  #   food[:cuisine] == cuisine
  # end

  cuisine_hash

  # binding.pry
end

# get_spicy_food_by_cuisine(spicy_foods, 'Sichuan')

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here

  sort_food = spicy_foods.sort_by do |food|
    food[:heat_level]
  end

  sort_food

  # binding.pry
end

# sort_by_heat(spicy_foods)

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  print_foods = spiciest_foods(spicy_foods)
  # binding.pry
  print_foods.map do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: " + "🌶" * food[:heat_level]
  end
end

# print_spiciest_foods(spicy_foods)

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  foods_length = spicy_foods.length
  heat_total = 0

  spicy_foods.each do |food|
    heat_total = food[:heat_level] + heat_total
  end

  avg_heat = heat_total / foods_length

  # binding.pry
end

average_heat_level(spicy_foods)
