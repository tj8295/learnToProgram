puts "What is your favorite number"
user_number_string = gets.chomp
suggested_number_int = user_number_string.to_i + 1
puts "This number is bigger and better " + suggested_number_int.to_s
