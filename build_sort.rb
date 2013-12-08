user_history = []
puts "type as many words as you want, one per line"

while true
    user_input = gets
    user_history.push(user_input)
    if user_input == "\n"
        puts user_history.sort
    end
end
