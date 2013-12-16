# 1. string interpolation vs concat
# 2. extract repetitive logic to methods
# 3. keep track of variable types (class)


require 'pry'

def bad_method
    binding.pry

  "asdf" + 3
end

def say(msg)

  puts "------- #{msg} ---------"
end

say 'What\'s the first number?'
num1 = gets.chomp

say ' What\'s the second number?'
num2 = gets.chomp

say '1) add 2) subtract 3) multiply 4) divide'
operator = gets.chomp


if operator == '1'
  result = num.to_i 1 + num2.to_i
  bad_method
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i * num2.to_i
elsif operator == '4'
  result = num1.to_f * num2.to_f
end

puts "Result is #{result}"

