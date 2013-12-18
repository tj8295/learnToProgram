def log block_description, &block
  puts "Begining #{block_description}"
  puts "#{block_description} returned #{block.call}"
  puts "Finished the block"
end

log 'Greet' do
  log 'Ok' do
    'what'
  end
  'Hello'
end


