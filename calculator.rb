# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo

def welcome
	puts "Welcome to the Ruby Calculator"
	equation
end


# Get the equation from the user
def equation
	puts "Enter your equation here:"
	print "> "
		user_input = gets.chomp.gsub(' ', '').scan(/\d+|[+-]|[*]|[\/]|[(]|[)]|[.]/)
		user_input = user_input.map do |x| 
			if x == "0"
				x.to_f
			elsif x.to_i != 0
				x.to_f
			else
				x
			end
		end
	
	# test the map here
	# puts user_input

	user_input = user_input.join('')
		if user_input == 'clear'
			exit
		else 
			puts answer = eval(user_input)
		end
	
	# puts "Store answer in memory as 'm'? (y/n)"
	# memory_choice = gets.chomp
	# 	if memory_choice == "y"
	# 		@m = answer
	# 	elsif memory_choice == "n"
	# 	else
			
	# 	end
		
	# exit if user_input == 'clear'
	welcome	
end

# test the answer
# puts answer

welcome
