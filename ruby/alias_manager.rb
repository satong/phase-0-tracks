# Take input of spy's name
p "Enter spy's name:"
name = gets.chomp
# Split input into first name and last name
first_name = name.split(' ')[0].capitalize
last_name = name.split(' ')[1].capitalize

# Swap first and last name
def fake_name_1(first_name, last_name)
  fake_name_1 = last_name + " " + first_name
end
# alternative method: fake_name_1 = name.split(' ').reverse.join(' ')

# Print out fake name
p fake_name_1(first_name, last_name)

# Change all vowels to the next vowel in 'aeiou'
def fake_name_2(name)
  fake_name_2 = name.chars.map! do |letter|
    if letter == " "
      letter = " "
    elsif "aeiou".include?(letter)
      letter = vowel_scramble(letter)
    elsif "zdhnt".include?(letter)
      letter = pre_vowel_scramble(letter)
    else
      letter.next
    end
  end
  fake_name_2.join
end

# Swap out a given vowel with the next vowel in order. For "u" swap it out for "a"
def vowel_scramble(vowel)
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

# Print out fake name
p fake_name_2(name)
