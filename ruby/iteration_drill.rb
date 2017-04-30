# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
def asterisk_print(array)
  array.each do |item|
    p item
    p "*"
  end
end
asterisk_print(zombie_apocalypse_supplies)

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
def bubble_sort(array)
  n = array.length
  swapped = true
  while swapped
    swapped = false
    (n-1).times do |i|
      if array[i].downcase > array[i+1].downcase
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end
  p array
end
bubble_sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def item_include?(array, string)
  match = false
  array.each do |el|
    if el == string
      match = true
    end
  end
  match
end

item_include?(zombie_apocalypse_supplies, "hatchet")
item_include?(zombie_apocalypse_supplies, "comb")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
def remove_item(array, num_items)
  while array.length > num_items
    array.pop
  end
  array
end

p remove_item(zombie_apocalypse_supplies, 5)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
def combine_arrays(array, new_array)
  new_array.reject! {|item| array.include?(item)}
  new_array.each do |item|
    array << item
  end
  array
end
p combine_arrays(zombie_apocalypse_supplies, other_survivor_supplies)

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
def print_hash(select_hash)
  select_hash.each do |k,v|
    p "#{k}-#{v}"
    p "*"
  end
end
print_hash(extinct_animals)

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
def extinct_year(select_hash, year)
  select_hash.each do |k,v|
    select_hash.delete(k) if v >= year
  end
end
p extinct_year(extinct_animals, 2000)

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
def update_year(select_hash, years_delta)
  select_hash.each{|k,v| select_hash[k] = v - years_delta}
end
p update_year(extinct_animals, 3)


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
def extinct_include?(select_hash, animal)
  match = false
  select_hash.each do |k,v|
    match = true if k == animal
  end
  match
end
p extinct_include?(extinct_animals, "Andean Cat")
p extinct_include?(extinct_animals, "Dodo")
p extinct_include?(extinct_animals, "Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
key = extinct_animals.delete("Passenger Pigeon")
p item_array = ["Passenger Pigeon", key]
p extinct_animals.tap{|h| h.delete("Passenger Pigeon")}
