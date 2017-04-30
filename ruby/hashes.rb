client_info = Hash.new()

p "Please enter client's name:"
client_info[:name] = gets.chomp

p "Please enter number of children:"
client_info[:num_child] = gets.chomp.to_i

p "Please enter the client's age:"
client_info[:age] = gets.chomp.to_i

p "Is this an urgent project? y/n"
if gets.chomp.downcase = "y"
  client_info[:urgency] = true
else
  client_info[:urgency] = false
end

p "Please review your new client profile"
p client_info

p "Do you need to update anything? Please enter the name of the field you'd like to update or 'none' if you don't need to update anything"

update = gets.chomp.downcase!

if update == "none"
  p "Thank you. End."
else
  p "Please enter the updated value"
  updated_value = gets.chomp

  if update == "age" or updated == "num_child"
    updated_value = updated_value.to_i
  end

  client_info[update.to_sym] = value

  p "Here is your updated client profile:"
  p client

end
