def shuffle some_array # This "wraps" recursive_shuffle.
    recursive_shuffle some_array, []
end


def recursive_shuffle unshuffled_array, shuffled_array
    if unshuffled_array.length == 0
        return shuffled_array
    else
        index = rand(unshuffled_array.length)
        item = unshuffled_array[index]
        shuffled_array << item
        unshuffled_array.delete_at(index)
        recursive_shuffle(unshuffled_array, shuffled_array)
    end
end

list_of_numbers = [1,2,3,6,7]
print shuffle(list_of_numbers)


