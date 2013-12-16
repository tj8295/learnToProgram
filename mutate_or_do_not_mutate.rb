def test array1, array2
    array1.reverse
    array2.reverse!
end

array_not_mutate = [1,2,3]
puts "Array not mutate before method: " + array_not_mutate.to_s

array_mutate = [1,2,3]
puts "Array mutate before method: " + array_mutate.to_s

puts

test(array_not_mutate, array_mutate)
puts "Array not mutate after method: " + array_not_mutate.to_s
puts "Array mutate after method: " + array_mutate.to_s



