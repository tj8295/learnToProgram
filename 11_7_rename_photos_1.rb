# puts Dir['ParisHilton.jpg']
Dir.chdir '/Users/Tom/photos_renamed'
# First we find all of the pictures to be moved.

pic_names = Dir['/Users/Tom/photos_rename_these/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
# This will be our counter. We'll start at 1
pic_number = 1
pic_names.each do |name|
  print '.'  # This is our "progress bar".
  new_name = if pic_number < 10
                         "#{batch_name}0#{pic_number}.jpg"
                       else
                          "#{batch_name}#{pic_number}.jpg"
                       end
  if File.exist?(new_name)
    puts 'File already exists'
  else
    File.rename name, new_name
  end
  pic_number = pic_number + 1
end

puts "Done"
