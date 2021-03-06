def dictionary_sort some_array # This "wraps" recursive_sort.
    recursive_sort some_array, []
end


def recursive_sort unsorted_array, sorted_array
    if unsorted_array.length == 0
        return sorted_array
    else
        unsorted_array_new = []
        smallest = unsorted_array.pop
        unsorted_array.each do |word|
            if word.downcase < smallest.downcase
                unsorted_array_new << smallest
                smallest = word
            else
                unsorted_array_new << word
            end
        end
        sorted_array << smallest
        recursive_sort(unsorted_array_new, sorted_array)
    end
end

list_of_words = ["Man", "women", "Computer", "ten", "ABC"]

puts dictionary_sort(list_of_words)

