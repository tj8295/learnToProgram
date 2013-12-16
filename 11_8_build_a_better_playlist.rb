# puts Dir['ParisHilton.jpg']
# /Users/Tom/rails_3_tutorial/workspace/rails_first/learn_to_program/music
# Dir.chdir '/Users/Tom/photos_renamed'
# First we find all of the pictures to be moved.



def music_shuffle(filenames_array)

end

puts "Enter file name (leave out the file type)"
song_to_find = gets

song_names = Dir['/Users/Tom/rails_3_tutorial/workspace/rails_first/learn_to_program/music/*.mp3']
song_names.shuffle!
puts 'What would you like to call this playlist?'
playlist_name = gets.chomp
playlist_name = playlist_name + '.m3u'
puts
print "Processing #{song_names.length} files: "

song_list_string = ""

song_names.each do |name|
  puts "Adding song #{name}"
  song_list_string = song_list_string +
                               "/Users/Tom/rails_3_tutorial/workspace/rails_first/learn_to_program/music/#{name}\n"
  end

File.open playlist_name, 'w' do |f|
    f.write(song_list_string)
  end

puts "Playlist #{playlist_name} finished"


# song_names.each do |name|
#   print '.'  # This is our "progress bar".
#   new_name = if song_number < 10
#                          "#{batch_name}0#{song_number}.jpg"
#                        else
#                           "#{batch_name}#{song_number}.jpg"
#                        end
#   if File.exist?(new_name)
#     puts 'File already exists'
#   else
#     File.rename name, new_name
#   end
#   song_number = song_number + 1
# end

# puts "Done"
