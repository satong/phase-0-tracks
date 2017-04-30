# Release 0

# Change all vowels to the next vowel in 'aeiou'
def fake_name(name)
  fake_name = name.chars.map! do |letter|
    if letter == " "
      letter = " "
    elsif "aeiou".include?(letter)
      letter = next_vowel(letter)
    elsif "zdhnt".include?(letter)
      letter = pre_vowel_scramble(letter)
    else
      letter.next
    end
  end
  fake_name = fake_name.join
  swap_name_order(fake_name)
end

# Swap out a given vowel with the next vowel in order. For "u" swap it out for "a"
def next_vowel(vowel)
  vowel_list = "aeiou".chars
  original_index = vowel_list.index(vowel)
  new_vowel = vowel_list.rotate[original_index]
  return new_vowel
end

# Swap out pre_vowel consonants with the next consonant after a vowel
def pre_vowel_scramble(letter)
  original_index = "zdhnt".index(letter)
  new_letter = "bfjpv"[original_index]
  return new_letter
end

# Swap first and last name
def swap_name_order(name)
  # Split input into first name and last name
  first_name = name.split(' ')[0].capitalize
  last_name = name.split(' ')[1].capitalize
  fake_name_1 = last_name + " " + first_name
end
# alternative method: fake_name_1 = name.split(' ').reverse.join(' ')


# Release 1: provide user interface
user_input = ""
spy_names = Hash.new
while user_input != "quit"
  # Take input of spy's name
  p "Enter spy's name. Enter 'quit' to end."
  user_input = gets.chomp
  if user_input != "quit"
    spy_names[user_input] = fake_name(user_input.downcase)
  end
  p spy_names
end
# Release 2: store alias
spy_names.each {|old_name, new_name| p "#{new_name} is actually #{old_name}"}
