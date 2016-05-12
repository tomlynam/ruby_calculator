# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo

@math_operators = ["+", "-", "*", "/" ]

def welcome
	puts "Welcome to the Ruby Calculator"
	# num1
end




# Get the equation from the user
puts "Enter your equation here:"
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

# puts user_input


user_input = user_input.join('')



	if user_input == 'clear'
		exit
	else 

		puts answer = eval(user_input)
					
	end

puts answer










# # Get the equation from the user
# puts "Enter your equation here:"
# user_input = gets.chomp.gsub(' ', '')

# 	if user_input == 'clear'
# 		exit
# 	else 
# 		begin
# 			answer = eval(user_input)
			
# 		rescue 
# 			puts "Error: #{e}"
# 		end
# 	end

# puts answer





# # Get the first number
# def num1
# 	puts "What is the first Number?"
# 	@user_input = gets.strip
# 		if @user_input == 'clear'
# 			exit
# 		elsif @user_input == "0"
# 			@user_input.to_f
# 		else @user_input = @user_input.to_f
# 			if @user_input == 0.0
# 				puts "That is not a valid input, please try again."
# 				welcome
# 			else
# 			end
# 		end
# 	operator
# end


# # Get the operator
# def operator
# 	puts "What is the operator?"
# 	@modifier = gets.strip
# 		if @math_operators.include?(@modifier) == true
# 		elsif @modifier == "clear"
# 			exit
# 		else puts "Operator #{@modifier} is not supported. I only support + - / * operators, please try again."
# 			welcome
# 		end
# 	num2
# end


# # Get the second number
# def num2
# 	puts "Enter the second number:"
# 	@number2 = gets.strip
# 		if @number2 == 'clear'
# 			exit
# 		elsif @number2 == "0"
# 			@number2.to_f
# 		else @number2 = @number2.to_f
# 			if @number2 == 0.0
# 				puts "That is not a valid input, please try again."
# 				welcome
# 			else
# 			end
# 		end
# 	answer
# end


# # Calculate the answer
# def answer
# 	puts "Calculating..."
# 	@first_number = @user_input.method(@modifier).(@number2)

# 	# Output the result to the user
# 	puts "The Result of #{@user_input} #{@modifier} #{@number2} is #{@first_number}."
# 	puts @first_number
# 	operator
# end

# welcome
