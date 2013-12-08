def shuffle unshuffled_array
    shuffled_array = []
    iterations = unshuffled_array.length
    iterations.times do
        index = rand(unshuffled_array.length)
        item = unshuffled_array[index]
        shuffled_array << item
        unshuffled_array.delete_at(index)
    end
    return shuffled_array
end

list_of_numbers = [1,2,3,6,7]
print shuffle(list_of_numbers)


