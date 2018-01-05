# QuickSort is a Divide and Conquer algorithm.
# It picks an element as pivot and partitions the given array around the picked pivot.

# There are many different versions of quickSort that pick pivot in different ways.
# - Always pick first element as pivot.
# - Always pick last element as pivot
# - Pick a random element as pivot. (implemented below)
# - Pick median as pivot.

class QuickSort
  def sort(array)
    return array if array.length <= 1

    pivot = array.sample
    array.delete_at(array.index(pivot)) # remove the pivot
    puts "Picked pivot of: #{pivot}"

    less = []
    greater = []
    array.each do |x|
      if x <= pivot
        less << x
      else
        greater << x
      end
    end

    sorted_array = []
    sorted_array << self.sort(less)
    sorted_array << pivot
    sorted_array << self.sort(greater)
    sorted_array.flatten!
  end
end

qs = QuickSort.new
puts qs.sort([1,4,5,2,8,7,8,19])
