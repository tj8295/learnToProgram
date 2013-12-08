puts 'what is your first name?'
first_name = gets
puts 'What is your middle name?'
middle_name = gets
puts 'What is your last name?'
last_name = gets

name_length = first_name.length + middle_name.length + last_name.length
puts 'length of your full name (first, middle, last): ' + name_length.to_s
