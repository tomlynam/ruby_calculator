# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo

@math_operators = ["+", "-", "*", "/" ]

def welcome
	puts "Welcome to the Ruby Calculator"
	num1
end

# Get the first number
def num1
	puts "What is the first Number?"
	@number1 = gets.strip
		if @number1 == 'clear'
			exit
		elsif @number1 == "0"
			@number1.to_f
		else @number1 = @number1.to_f
			if @number1 == 0.0
				puts "That is not a valid input, please try again."
				welcome
			else
			end
		end
	operator
end

# Get the operator
def operator
	puts "What is the operator?"
	@modifier = gets.strip
		if @math_operators.include?(@modifier) == true
		elsif @modifier == "clear"
			exit
		else puts "Operator #{@modifier} is not supported. I only support + - / * operators, please try again."
			welcome
		end
	num2
end


# Get the second number
def num2
	puts "Enter the second number:"
	@number2 = gets.strip
		if @number2 == 'clear'
			exit
		elsif @number2 == "0"
			@number2.to_f
		else @number2 = @number2.to_f
			if @number2 == 0.0
				puts "That is not a valid input, please try again."
				welcome
			else
			end
		end
	answer
end


# Calculate the answer
def answer
	puts "Calculating..."
	calc = Proc.new { |n1, op, n2| n1.method(op).(n2) }
	@first_number = calc.call(@number1, @modifier, @number2)

	puts "The Result of #{@number1} #{@modifier} #{@number2} is #{@first_number}."
	puts @first_number
	operator
end

welcome
