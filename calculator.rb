# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo

@math_operators = ["+", "-", "*", "/" ]

puts "Welcome to the Ruby Calculator"

# Get the first number
def num1
	puts "What is the first Number?"
	@number1 = gets.strip.to_f
		if @number1.is_a?(Numeric)
			else puts "'#{@number1}' is not a valid input, please try again."
				exit
		end
	operator
end



# Get the operator
def operator
	puts "What is the operator?"
	@modifier = gets.strip
		if @math_operators.include?(@modifier) == true
		else puts "Operator #{@modifier} is not supported. I only support + - / * operators, please try again."
			exit
		end
	num2
end

# Get the second number
def num2
	puts "Enter the second number:"
	@number2 = gets.strip.to_f
		if @number2.is_a?(Numeric)
			else puts "'#{@number2}' is not a valid input, please try again."
				exit
		end
	answer
end

# Calculate the answer
def answer
	puts "Calculating..."
	@first_number = @number1.method(@modifier).(@number2)

	# Output the result to the user
	puts "The Result of #{@number1} #{@modifier} #{@number2} is #{@first_number}."
	puts @first_number
	operator
	user_input
end

num1



# Do all the bonus problems


