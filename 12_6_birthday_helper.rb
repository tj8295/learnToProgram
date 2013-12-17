require 'pry'

birth_dates = {}

birthday_string = File.read 'birthdays.txt'

birthday_string.each_line do |line|
  name_birthday_array = line.chomp.split(',')
  birth_dates[name_birthday_array[0]] = name_birthday_array[1] + ", " +name_birthday_array[2]
end

puts "Name please:"
name = gets.chomp

born_date = birth_dates[name]

month = born_date[1..3]
year = born_date[-4..-1]
day = born_date[-9..-7]

born_time = Time.new(year, month, day)
puts "born time = #{born_time}"
puts
puts "next birthday: #{born_time.month}, #{born_time.day}, #{(Time.new.year + 1)} "


# birth_dates['The King of Spain'] = 'Jan 5, 1938'
# birth_dates['Christopher Alexander'] = 'Mar 29, 1957'
# birth_dates['Christopher Lee'] = 'May 27, 1922'
# birth_dates['Christopher Lloyd'] = 'Oct 22, 1938'
# birth_dates['Christopher Pine'] = 'Aug 3, 1976'
# birth_dates['Christopher Plummer'] = 'Dec 13, 1927'
# birth_dates['Christopher Walken'] = 'Mar 31, 1943'


# Jan 5,  1938"}
