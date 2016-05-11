# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo

@math_operators = ["+", "-", "*", "/" ]

puts "Welcome to the Ruby Calculator"

# Get the first number
puts "What is the first Number?"
number1 = gets.strip.to_f
	if number1.is_a?(Numeric)
		else puts "'#{number1}' is not a valid input, please try again."
			exit
	end


# Get the operator
puts "What is the operator?"
modifier = gets.strip
	if @math_operators.include?(modifier) == true
	else puts "Operator #{modifier} is not supported. I only support + - / * operators, please try again."
		exit
	end


# Get the second number
puts "Enter the second number:"
number2 = gets.strip.to_f
	if number2.is_a?(Numeric)
		else puts "'#{number2}' is not a valid input, please try again."
			exit
	end


# Calculate the answer
puts "Calculating..."
first_number = number1.method(modifier).(number2)

# Output the result to the user
puts "The Result of #{number1} #{modifier} #{number2} is #{first_number}."


# Do all the bonus problems