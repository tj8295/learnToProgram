#Hours in a year.​ How many hours are in a year?
days_in_a_year = 365
hours_in_a_day = 24
minutes_in_a_hour = 60
seconds_in_a_minute = 60

seconds_in_a_year = seconds_in_a_minute * minutes_in_a_hour * hours_in_a_day * days_in_a_year
puts "Seconds in a year " + seconds_in_a_year.to_s
authors_age = 1160000000
authors_age_in_years = authors_age / seconds_in_a_year
puts "Author is: " + authors_age_in_years.to_s + " old."
