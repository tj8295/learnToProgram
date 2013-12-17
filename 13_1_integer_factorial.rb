# class Integer
#   def factorial
#     if self <= 1
#       1
#     else
#       self * (self-1).factorial
#     end
#   end
# end

class Integer
  def factorial
    raise 'Must not use negative integer' if self < 0
    (self <= 1)  ? 1 : self * (self - 1).factorial
  end
end

puts (-3).factorial
puts 5.factorial
puts 7.factorial
