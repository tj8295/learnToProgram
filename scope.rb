#scope.rb:8:in `<main>': undefined local variable or method `i' for main:Object (NameError)

5.times do
    i = %w(1,2,3)
    i.reverse
    i.reverse!
end

puts i
