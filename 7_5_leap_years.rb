puts "Enter starting year: "
starting_year = gets
puts "Enter ending year: "
ending_year = gets

puts "Leap years within this range:\n"
for year in starting_year.to_i..ending_year.to_i
    if year%100==0 && year%400!=0
        next
    end
    if year%4==0
        puts year
    end
end


