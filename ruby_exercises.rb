# 1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9,
#   10], and print out each value.
line_width = 50
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts 'Nubmer 1'.center(line_width)
nums.each { |x| puts x }

# 2. Same as above, but only print out values greater than 5.
puts 'Number 2'.center(line_width)
nums.each { |x| puts x if x > 5 }

# 3. Now, using the same array from #2, use the "select" method to extract
#   all odd numbers into a new array.
puts 'Number 3'.center(line_width)
puts nums.select { |num| num.odd? }

# 4. Append "11" to the end of the array. Prepend "0" to the beginning.
puts 'Number 4'.center(line_width)
nums << 11
nums.unshift(0)
puts nums

# 5. Get rid of "11". And append a "3".
puts 'Number 5'.center(line_width)
nums.pop
nums << 3
puts nums

# 6. Get rid of duplicates without specifically removing any one value.
puts 'Number 6'.center(line_width)
nums.uniq!
puts nums

# 7. What's the major difference between an Array and a Hash?
    # An array uses integers as indexes, a Hash can use any value as an index.

# 8. Create a Hash using both Ruby 1.8 and 1.9 syntax.
# 1.8
puts 'Number 8'.center(line_width)
m = { :foo => 'bar', :make => 'ten' }
n = { foo: 'bar', make: 'ten' }
puts m
puts n

# 9. Get the value of key "b".
puts 'Number 9'.center(line_width)
h = { a: 1, b: 2, c: 3, d: 4 }
puts h[:b]

# 10. Add to this hash the key:value pair {e:5}
puts 'Number 10'.center(line_width)
h[:e] = 5
puts h

# 13. Remove all key:value pairs whose value is less than 3.5
puts 'Number 13'.center(line_width)
puts h.select { |_, v| v > 3.5 }
h.delete_if { |_, v| v < 3.5 }

# 14. Can hash values be arrays? Can you have an array of hashes?
#    (give examples)
  # Answer: Yes to both
    puts 'Number 14'.center(line_width)
    h = { foo: [3, 5, 2] }
    m = [{ foo: [3, 5, 2] }, { bar: [3, 5, 2] }]
    puts h
    puts m

# 15. Look at several Rails/Ruby online API sources and say which one
#    your like best and why.
puts 'Number 15'.center(line_width)
# http://www.ruby-doc.org/core-2.0.0/ - complete and updated
# http://guides.rubyonrails.org/ - well written
