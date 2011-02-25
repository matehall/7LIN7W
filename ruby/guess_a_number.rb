
def get_user_guess()
	return STDIN.gets.to_i
end

value_to_guess = rand(10)
puts 'Guess a number between 0 and 9'
input_var = get_user_guess()

while input_var != value_to_guess
	if input_var > value_to_guess
		puts 'Guess to high'
	elsif input_var < value_to_guess
		puts 'Guess to low'
	end
input_var = get_user_guess()
end

puts 'Yes thats right!'

