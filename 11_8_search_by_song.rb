# puts Dir['ParisHilton.jpg']
# /Users/Tom/rails_3_tutorial/workspace/rails_first/learn_to_program/music
# Dir.chdir '/Users/Tom/photos_renamed'
# First we find all of the pictures to be moved.


#    ["/Users/Tom/Music/iTunes/iTunes Media/Music/Benny Benassi_The Biz/Hypnotica/13 I love my sex 1.mp3",
#     "/Users/Tom/Music/iTunes/iTunes Media/Music/Benny Benassi_The Biz/Hypnotica/13 I love my sex.mp3",
#     "/Users/Tom/Music/iTunes/iTunes Media/Music/Unknown Artist/Unknown Album/jose luis reyes haz llover.mp3"]

def music_shuffle(filenames_array)
  filenames_array.each do |song|
    song_path = song.split '/'

  end
end


song_list_string = ""
song_root = "/Users/Tom/Music/iTunes/iTunes Media/Music"

while true
  puts "Enter file name (leave out the file type) or type END to create the list"
  song_to_find = gets.chomp

  if song_to_find == "END"
    break
  end

  song_names = Dir["#{song_root}/**/*#{song_to_find}*.mp3"]
  print song_names

  song_names.shuffle!
  song_names.each do |name|
    puts "Adding song #{name}"
    song_list_string = song_list_string +
                                 "#{song_root}/#{name}\n"
    end
end

puts song_names

puts 'What would you like to call this playlist?'
playlist_name = gets.chomp
playlist_name = playlist_name + '.m3u'
puts

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
