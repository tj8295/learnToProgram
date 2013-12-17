time_now = Time.new
time_before = Time.local(2013, 12, 16, 2, 30)

puts time_now > time_before

puts time_now - time_before

time_birthday = Time.local(1979, 12, 3, 5, 15)

time_to_turn_one_billion = time_birthday + 1_000_000_000

puts time_to_turn_one_billion

puts "What year were you born?"
year = gets.chomp.to_i
puts "What month?"
month = gets.chomp.to_i
puts "what day?"
day = gets.chomp.to_i

time_birthday = Time.local(year, month, day)

spank_number = Time.now.year - time_birthday.year

puts "You need #{spank_number} spanks."

spank_number.times { puts "Spank!" }
