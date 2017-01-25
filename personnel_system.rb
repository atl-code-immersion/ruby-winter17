class Employee

	attr_accessor :first_name, :last_name, :role, :location, :wage

	def initialize(fname, lname, role, location, wage)
		@first_name = fname
		@last_name = lname
		@role = role
		@location = location
		@wage = wage
	end

	def profile
		puts "#{@first_name} #{@last_name}"
		puts "#{@role} @ #{@location}"
		puts "Currently makes $#{'%.2f' % @wage}/hr"
	end

end

@employees = []

def main
	puts "Welcome to the Tech Talent South HR System"
	main_menu
end

def main_menu
	puts "Please choose from the following selections:"
	puts "--------------------------------------------"
	puts "1. Enter New Employee Records"
	puts "2. View Existing Employee Records"
	puts "3. Exit Program"

	choice = gets.chomp.to_i

	case choice
		when 1
			system "clear"
			employee_entry
		when 2
			system "clear"
			existing_records_menu
		when 3
			end_session
		else
			system "clear"
			puts "Not a valid selection. Try again."
			main_menu 
	end
end

def employee_entry
	fname = ""

	puts "Create New Employee Records\n(type 'done when finished)"

	while fname != "done"
		puts "-----------------------------"
		puts "Enter New Employee Information:"
		puts "-----------------------------"
		print "First Name: "
		fname = gets.chomp
		if fname != "done"
			print "Last Name: "
			lname = gets.chomp
			print "Role: "
			role = gets.chomp
			print "Location: "
			loc = gets.chomp.downcase.split.map(&:capitalize).join(' ')
			print "Wage: $"
			wage = gets.chomp.to_f
			@employees.push(Employee.new(fname, lname, role, loc, wage))
			system "clear"
		end
	end

	system "clear"
	puts "Entry complete."
	puts "Would you like to return to the main menu? [Y or N]"
	choice = gets.chomp.downcase

	case choice
		when "y"
			system "clear"
			main_menu
		when "n"
			snark_remark("Okay. Well maybe the next person wants a shot at it.")
			main_menu
		else
			snark_remark("Try being civil next time.\nGoodbye.")
		end
end

def existing_records_menu
	puts "How would you like to look up Employee(s)?"
	puts "-------------------------------"
	puts "1. By Name"
	puts "2. By Location"
	puts "3. By Role"

	choice = gets.chomp.to_i

	case choice
		when 1
			system "clear"
			name_lookup
		when 2
			system "clear"
			location_lookup
		when 3
			system "clear"
			role_lookup
		else
			system "clear"
			puts "Not a valid selection. Try again."
			existing_records_menu
	end
end

def name_lookup
	puts "Look up employee by name:"
	print "First name: "
	fname = gets.chomp
	print "Last name: "
	lname = gets.chomp

	emp_choice = nil
	@employees.each do |emp|
		if fname == emp.first_name && lname == emp.last_name
			emp.profile
			emp_choice = emp
		end
	end

	if emp_choice.nil?
		system "clear"
		puts "No records found under that name. Please try again."
		name_lookup
	else
		print "Make changes to this employee record? [Y or N] "
		choice = gets.chomp.downcase

		case choice
			when "y"
				system "clear"
				record_change_menu(emp_choice)
			when "n"
				snark_remark("Hope you got what you come for then.")
				main_menu
			else
				snark_remark("You're not taking this seriously")
				main_menu
		end
	end
end

def location_lookup
	puts "Look up employees by location."
	print "What location do you want to search by? "
	loc = gets.chomp.downcase.split.map(&:capitalize).join(' ')
	# count = 1
	short_list = []
	puts "Which employee are you looking for?"
	@employees.each do |emp|
		if emp.location == loc
			puts "#{count}. #{emp.first_name} #{emp.last_name}, #{emp.role}"
			short_list.push(emp)
			# count += 1
		end
	end

	if short_list.empty?
		system "clear"
		puts "No records found for that location. Please try again."
		location_lookup
	else
		choice = gets.chomp.to_i
		system "clear"
		record_change_menu(short_list[choice-1])
	end
end

def role_lookup
	puts "Look up employees by role."
	print "What role do you want to search by? "
	role = gets.chomp.downcase.split.map(&:capitalize).join(' ')
	count = 1
	short_list = []
	puts "Which employee are you looking for?"
	@employees.each do |emp|
		if emp.role == role
			puts "#{count}. #{emp.first_name} #{emp.last_name}, #{emp.location}"
			short_list.push(emp)
			count += 1
		end
	end

	if short_list.empty?
		system "clear"
		puts "No records found for that location. Please try again."
		location_lookup
	else
		choice = gets.chomp.to_i
		system "clear"
		record_change_menu(short_list[choice-1])
	end
end

def record_change_menu(obj)
	puts "What Do You Want to Change?"
	puts "---------------------------"
	puts "1. First Name"
	puts "2. Last Name"
	puts "3. Location"
	puts "4. Role"
	puts "5. Wage"

	choice = gets.chomp.to_i

	case choice
		when 1
			system "clear"
			change_fname(obj)
		when 2
			system "clear"
			change_lname(obj)
		when 3
			system "clear"
			change_location(obj)
		when 4
			system "clear"
			change_role(obj)
		when 5
			system "clear"
			change_wage(obj)
		else
			system "clear"
			puts "Will you just...act like a damn grown-up."
			record_change_menu(obj)
	end
end

def change_fname obj
	puts "Changing things up, personnally, huh?\nWhat's the new handle?"
	new_name = gets.chomp

	obj.first_name = new_name

	another_change(obj)
end

def change_lname obj
	puts "Is it a witness protection thing? Nevermind, I don't want to know.\nWhat's that new last name?"
	new_name = gets.chomp

	obj.last_name = new_name

	another_change(obj)
end

def change_location obj
	puts "Where are you transfering them to?"
	new_loc = gets.chomp

	obj.location = new_loc

	another_change(obj)
end

def change_role obj
	puts "What are they gonna get up to now?"
	new_role = gets.chomp

	obj.role = new_role

	another_change(obj)
end

def change_wage obj
	puts "How much more are they getting per hour?"
	amount = gets.chomp.to_f

	obj.wage += amount

	another_change(obj)
end

def another_change obj
	system "clear"
	obj.profile
	puts "***********"
	print "Make another change? [Y or N] "
	choice = gets.chomp.downcase

	case choice
		when "y"
			system "clear"
			record_change_menu(obj)
		when "n"
			system "clear"
			main_menu
		else
			snark_remark("Yeah, you're the first person to type something other than Y or N. Congrats.")
			main_menu
	end
end

def end_session
	system "clear"
	puts "That was fun. See you next time."
end

def snark_remark str
	system "clear"
	puts str
	sleep(4)
	system "clear"
end

main