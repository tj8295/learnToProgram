# The filename doesn't have to end
# with '.txt', but since it is valid
# text, why not?
filename     = 'listerQuote.txt'
test_string  = 'I promise that I swear absolutely that ' + 'I will never mention the gazpacho soup again.'

# The 'w' here is for write-access to the file,
# since we are trying to write to it.
File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename
puts "string is: #{read_string}"
puts(read_string == test_string)
