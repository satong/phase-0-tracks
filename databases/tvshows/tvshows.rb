# FAVORITE TV SHOWS LIST MAKER

# require gems
require 'SQLite3'

# DATABASE SETUP
# create SQLite3 database
db = SQLite3::Database.new("tvshows.db")
db.results_as_hash = true

# create a table if a table doesn't already exist
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS tvshows(
  	id INTEGER PRIMARY KEY,
  	name VARCHAR(255),
  	channel VARCHAR(255),
  	airtime INT,
		wkday_aired VARCHAR(255)
	)
SQL

db.execute(create_table_cmd)
=begin
# METHODS

# inserts a new tvshow into the table
def add_tvshow(db, name, channel, airtime, wkday_aired)
	db.execute("INSERT INTO tvshows (name, channel, airtime, wkday_aired) VALUES (?, ?, ?)", [name, channel, airtime, wkday_aired])
end

# edits information for a specific tvshow
def edit_tvshow(db, id, new_name, new_channel, new_airtime, new_wkday_aired)

	if new_name. != ""
		db.execute("UPDATE tvshows SET name=? WHERE id=?",[new_name,id])
	end

	if new_channel. != ""
		db.execute("UPDATE tvshows SET channel=? WHERE id=?",[new_channel,id])
	end

	if new_airtime. != ""
		db.execute("UPDATE tvshows SET airtime=? WHERE id=?",[new_airtime,id])
	end

	if new_wkday_aired. != ""
		db.execute("UPDATE tvshows SET wkday_aired=? WHERE id=?",[new_wkday_aired,id])
	end
end

# deletes a specific tvshow by name
def delete_tvshow(db, name)
	db.execute("DELETE FROM tvshows WHERE name=?",[name])
end

# print full list of tvshows in database
def print_list(db)
	tvshows_table = db.execute("SELECT * FROM tvshows")
	if tvshows_table == []
		return puts "The list is currently empty."
	end
	puts "TV SHOWS LIST"
	tvshows_table.each do |tvshows|
		puts "#{tvshows['id']}: #{tvshows['name']} (#{tvshows['channel']})"
	end
end

# DRIVER CODE

# Pseudocode:
# Print current list
# While user is not finished
	# Prompt user if they would like to add a new tvshow, edit, or delete an existing tvshow
	# If want to add new
	# 	prompt new tvshow for the name, channel, and rating
	#  	Store name, channel, and rating
	#  	Create a new tvshow in list
	# If want to edit an existing tvshowaurnant
	# 	ask for the tvshow # from list
	# 	print current details
	# 	Ask for updated to name, channel, and rating
	#  	Store name, channel, and rating
	# 	Change name, channel, and rating
	# 	print updated details
	# If want to delete
	# 	Ask for the tvshow # from the list
	# 	Delete the tvshow
	# If want to view
	# 	Ask for the tvshow # from the list
	# 	Print tvshow details
	# Print updated tvshow list if changes were made
	# Ask user if they are finished

print_tvshow_list(db)

finished = "n"

while finished == "n"

	puts "Indicate what you would like to do from the menu below:
	\n 'add' a tv show to the list
	\n 'edit' the details of a tv show
	\n 'delete' a tv show from the list
	\n 'view' all tv shows in the list
	\n 'clear' to delete all tv shows on the list"
	user_command = gets.chomp.downcase

	if user_command == "add"

		p "What's the name of this tv show?"
		new_name = gets.chomp

		p "Which channel airs this tv show?"
		new_channel = gets.chomp

		p "What time does the tv show air?"
		new_airtime = gets.chomp

		p "On what day does the tv show air? (Enter one of the following: Mon, Tue, Wed, Thu, Fri, Sat, Sun)"
		new_wkday_aired = gets.chomp

		add_tvshow(db, new_name, new_channel, new_airtime, new_wkday_aired)

	elsif user_command == "edit"

		p "Enter the tvshow number you want to edit."
		tvshow_num = gets.chomp

		p "Below are the current details of the tvshow."
		print_tvshow_details(db, tvshow_num)

		p "Enter the new name of the tvshow (leave blank if no updates):"
		new_name = gets.chomp

		p "Enter the new channel of the tvshow (leave blank if no updates):"
		new_channel = gets.chomp

		p "Enter your new rating for the tvshow (leave blank if no updates):"
		new_rating = gets.chomp

		edit_tvshow(db, tvshow_num, new_name, new_channel, new_rating)

		p "Below are the updated details of the tvshow."
		print_tvshow_details(db, tvshow_num)

	elsif user_command == "delete"

		p "Enter the tvshow you want to delete."
		tvshow = gets.chomp

		delete_tvshow(db, tvshow)

	else
		p "You entered an invalid answer. (valid options: add, edit, delete, view, clear)"
	end

	if user_command != "view"
		p "Below is your updated list."
		print_tvshow_list(db)
	end

	p "Are you finished? (y/n)"
	finished = gets.chomp

end
=end
