# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo


operators = ["+", "-", "*", "/" ]

puts "Welcome to the Ruby Calculator"

# Get the first number
puts "What is the first Number?"
first_number = gets.chomp.to_f

	if first_number.is_a?(Numeric)
		else puts "'#{first_number}' is not a valid input, please try again."
			exit
	end


# Get the operator
puts "What is the operator?"
modifier = gets.strip
if operators.include?(modifier) == true
else puts "Operator #{modifier} is not supported. I only support + - / * operators, please try again."
	exit
end


# Get the second number
puts "Enter the second number:"
second_number = gets.chomp.to_f

	if second_number.is_a?(Numeric)
		else puts "'#{second_number}' is not a valid input, please try again."
			exit
	end



# Calculate the answer
puts "Calculating..."
result = first_number.method(modifier).(second_number)



# Output the result to the user
puts "The Result of #{first_number} #{modifier} #{second_number} is #{result}."



# Do all the bonus problems





