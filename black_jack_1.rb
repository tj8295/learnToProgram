# Keep 3 separate arrays for deck, dealer and players hand

require 'pry'

# def calculate_total(cards) #[['H', '2'], ['S', '7']]
#   total = 0
#   cards.each do |el|
#     value = 0
#     if el[1] == 'J' || el[1] =='Q' || el[1] == 'K'
#       value = 10
#     elsif el[1] == 'A'
#       if (total + 11) > 21
#         value = 1
#       else
#         value = 11
#       end
#     else
#       value = el[1].to_i
#     end
#     total += value
#   end
#   return total
# end


deck = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
player_hand = []
dealer_hand = []

def hit(hand_array, deck)
  hand_array << deck.pop
 end

 def stand

 end

def hand_total(hand_array)
  hand_array.reduce(:+)
end

 def check_status(hand_array)
    if hand_total(hand_array) > 21
        puts "--- Hand: #{hand_array}. Over 21, You Loose."
    end
 end

 def total(hand)
   hand.reduce(:+)
 end

def dealer_play

end

def play_game(hand, deck)
  puts "--- Hand: #{hand}. "
  puts "--- 1) Hit or 2) Stand? ---"
  decision = gets.chomp

  if decision == '1'
    hit(hand, deck)
    if total(hand) > 21
      puts "--- Hand: #{hand}. Over 21, You Loose."
    elsif total(hand) == 21
      puts "--- Hand: #{hand}. 21, You Win!"
    else
      play_game(hand, deck)
    end
  elsif decision == '2'
    puts "--- Dealer will now play ---"
    dealer_play
  end
end

puts "--- Start Game ---"
deck.shuffle!
hit(player_hand, deck)
hit(player_hand, deck)
play_game(player_hand, deck)


