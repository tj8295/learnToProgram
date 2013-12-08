while true
    userInput = gets.chomp
    if userInput == 'BYE'
        break
    end
    if userInput == userInput.upcase
        year_modify = rand(21)
        year = 1930 + year_modify
        puts "NO, NOT SINCE " + year.to_s
    else
        puts "HUH?! SPEAK UP, SONNY!"
    end
end
