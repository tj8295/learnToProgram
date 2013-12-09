start_int = 100

while start_int > 0
    start_string = start_int.to_s
    start_minus_one = (start_int-1).to_s
    puts start_string + " bottles of beer on the wall " + start_string + " on the wall, take one down and pass it around and " + start_minus_one +" bottles of beer on the wall."
    start_int = start_int-1
end
