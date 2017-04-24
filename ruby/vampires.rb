#Release 3: Process multiple employees
p "How many employees would you like to process?"
employee_count = gets.chomp.to_i

while employee_count > 0

	#Release 1: Gather data (name, age, place of birth, order, health insurance)
	p "What is your name?"
	vamp_name = gets.chomp

	p "How old are you?"
	age = gets.chomp

	p "What year were you born?"
	birth_year = gets.chomp

	p "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic = gets.chomp

	p "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp

	result = ""

  #Release 4: Include allergies
  allergy = []
  allergy_input = ""
  while allergy_input.downcase != "done"
    p "Please name your allergies one at a time. Please type 'done' when you are finished."
    allergy_input = gets.chomp
    allergy << allergy_input
  end

  if allergy.include?("sunshine")
    p "Probably a vampire."
    break
  end

#Release 2: Add detection logic
	age = age.to_i
	birth_year = birth_year.to_i
	current_year = 2017
	current_age = current_year - birth_year


	if vamp_name == "Drake Cula" || vamp_name == "Tu Fang"
		result = "Definitely a vampire."

  elsif age != current_age && garlic.downcase == "n" && insurance.downcase == "n"
    result = "Almost certainly a vampire."

	elsif age == current_age && (garlic.downcase == "y" || insurance.downcase == "y")
		result = "Probably not a vampire."

	elsif age != current_age && (garlic.downcase == "n" || insurance.downcase == "n")
		result = "Probably a vampire."

	else
		result = "Results inconclusive."

	end

	p result
	employee_count -= 1

end

#Release 5: Add plot twist
p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
