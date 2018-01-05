# Insertion sort builds the final sorted array (or list) one item at a time.
# https://en.wikipedia.org/wiki/Insertion_sort

class InsertionSort
  def sort_in_place(to_sort)
    # Index starts at one, we can skip the first element, since we would
    # otherwise take it and place it in the first position, which it already is
    for index in 1..(to_sort.length - 1)
      for inner_index in 0..(index - 1)
        if to_sort[inner_index] >= to_sort[index]
          to_sort.insert(inner_index, to_sort[index])
          to_sort.delete_at(index + 1)
        end
      end
    end

    return to_sort
  end
end

is = InsertionSort.new
puts is.sort_in_place([1,4,5,2,8,7,8,19])
