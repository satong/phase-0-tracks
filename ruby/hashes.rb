# Create empty hash for client profile information
client_info = Hash.new()

# Prompt user to enter information that will be inserted into the hash
p "Please enter client's name:"
client_info[:name] = gets.chomp

p "Please enter number of children:"
client_info[:num_child] = gets.chomp.to_i

p "Please enter the client's age:"
client_info[:age] = gets.chomp.to_i

p "Is this an urgent project? y/n"
if gets.chomp.downcase == "y"
  client_info[:urgency] = true
else
  client_info[:urgency] = false
end

# Provide user a review of the client profile that they just entered
p "Please review your new client profile"
p client_info

# Ask user if they need to update any of the information provided.
p "Do you need to update anything? Please enter the name of the field you'd like to update or 'none' if you don't need to update anything"

update = gets.chomp.downcase

# Allow to skip the update code if user doesn't need to update
if update == "none"
  p "Thank you. End."
else
  p "Please enter the updated value"
  updated_value = gets.chomp
# Convert updated inputs into integers for fields on client age and number of children
  if update == "age" or update == "num_child"
    updated_value = updated_value.to_i
  end
# Update the existing Hash information with the updated values
  client_info[update.to_sym] = updated_value
# Provide user a review of the updated client profile information
  p "Here is your updated client profile:"
  p client_info

end
