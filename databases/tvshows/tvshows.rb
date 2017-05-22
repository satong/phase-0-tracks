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

# FUNCTIONS
# inserts a new tvshow into the table
def add_tvshow(db, name, channel, airtime, wkday_aired)
	db.execute("INSERT INTO tvshows (name, channel, airtime, wkday_aired) VALUES (?, ?, ?, ?)", [name, channel, airtime, wkday_aired])
end

# edits information for a specific tvshow
def edit_tvshow(db, name, new_name, new_channel, new_airtime, new_wkday_aired)
	if new_name. != ""
		db.execute("UPDATE tvshows SET name=? WHERE name=?",[new_name, name])
	end

	if new_channel. != ""
		db.execute("UPDATE tvshows SET channel=? WHERE name=?",[new_channel, name])
	end

	if new_airtime. != ""
		db.execute("UPDATE tvshows SET airtime=? WHERE name=?",[new_airtime, name])
	end

	if new_wkday_aired. != ""
		db.execute("UPDATE tvshows SET wkday_aired=? WHERE name=?",[new_wkday_aired, name])
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
		return p "No TV shows in list."
	end
	tvshows_table.each do |tvshows|
		p "#{tvshows['id']}: #{tvshows['name']} - #{tvshows['channel']} airs on #{tvshows['wkday_aired']} at #{tvshows['airtime']}"
	end
end

# prints tv shows that air on a specific weekday
def print_list_day(db, wkday)
  tvshows_day = db.execute("SELECT name, channel, airtime FROM tvshows WHERE wkday_aired=?", [wkday])
  if tvshows_day == []
    return p "No TV shows on #{wkday}day"
  end
  tvshows_day.each do |tvshows|
    p "#{tvshows['name']} airs on #{tvshows['channel']} at #{tvshows['airtime']}"
  end
end

# DRIVER CODE
# Print current list
# Create loop of actions user can take while he/she is not finished with manipulating the datbase
	# Available actions include adding a tv show, updating a tv show, deleting a tv show, and seeing the full list of tv shows
	# If adding:
    # Prompt user for new tv show data input on name, channel, airtime and weekday when show is aired
    # Store all provided information in set variables
    # Insert row into table using the data stored in the variables
	# If updating:
    # Print out current list for user to reference
	  # Prompt user for the name of the tv show he/she would like to update
  	# Prompt user for new name, channel, airtime and wkday information and store all information in set variables
  	# Call the update function with the variables as the inputs
	# If deleting:
    # Print out current list for user to reference
    # Prompt user for the name of the tv show he/she would like to delete
  	# Use the given name as the input for the delete function
	# If viewing
  	# Call the print_list function
  # If viewing list of TV shows that air on a particular week day
    # Prompt user for the week day
    # Use given weekday as input for the print_list_day function
	# If user has made any changes (add, update or delete), call the print_list function again to show the latest table
	# Prompt user if he/she is finished
  # If user is finished (input = 'y') end the loop and the program

print_list(db)

finished = "n"

while finished == "n"

	puts "Please select what you'd like to do from the menu below:
	\n 1: add a tv show to the list
	\n 2: edit the details of a tv show
	\n 3: delete a tv show from the list
	\n 4: view all tv shows in the list
  \n 5: see tv shows airing on a given day of the week"

	user_command = gets.chomp.to_i

	if user_command == 1

		p "Let's add a new tv show. What's the name of this tv show?"
		new_name = gets.chomp

		p "On which channel is this tv show aired?"
		new_channel = gets.chomp

		p "What time does the tv show air? (Enter military time with no colons e.g., 8pm should be entered as 2000)"
		new_airtime = gets.chomp

		p "On what day does the tv show air? (Enter one of the following: Mon, Tue, Wed, Thu, Fri, Sat, Sun)"
		new_wkday_aired = gets.chomp

		add_tvshow(db, new_name, new_channel, new_airtime, new_wkday_aired)

	elsif user_command == 2
    p "Here's the current list of TV shows:"
    print_list(db)

		p "Which tv show do you want to update? Enter the name exactly as it appears."
		tvshow_name = gets.chomp

		p "Enter the new name of the tv show (leave blank if no updates):"
		new_name = gets.chomp

		p "Enter the new channel of the tv show (leave blank if no updates):"
		new_channel = gets.chomp

		p "Enter the new time of when the tv show airs (leave blank if no updates):"
		new_airtime = gets.chomp

    p "Enter the new day of the week when the tv show airs (leave blank if no updates):"
		new_wkday_aired = gets.chomp

		edit_tvshow(db, tvshow_name, new_name, new_channel, new_airtime, new_wkday_aired)

	elsif user_command == 3
    p "Here's the current list of TV shows:"
    print_list(db)

		p "Enter the name of tv show (exactly as it appears) you want to delete."
		tvshow = gets.chomp

		delete_tvshow(db, tvshow)

  elsif user_command == 4
    p "Here's the current list of TV shows:"
    print_list(db)

  elsif user_command == 5
    p "For a list of all the tv shows airing on a given day of the week, please enter one of the following: Mon, Tue, Wed, Thu, Fri, Sat, Sun"
    wkday = gets.chomp.capitalize

    print_list_day(db, wkday)

	else
		p "Please select from the menu provided. Enter 1 to add, 2 to update, 3 to delete, 4 to view list, or 5 to view shows on a specific day of the week"
	end

	if user_command != 4 && user_command != 5
		p "Below is the updated list."
		print_list(db)
	end

	p "Are you finished? (y/n)"
	finished = gets.chomp

end
