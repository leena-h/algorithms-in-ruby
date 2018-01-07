# The selection sort algorithm sorts an array by repeatedly finding the minimum
# element (considering ascending order) from unsorted part and putting it at the
# beginning. The algorithm maintains two subarrays in a given array.
#
# 1) The subarray which is already sorted.
# 2) Remaining subarray which is unsorted.
#
# In every iteration of selection sort, the minimum element (considering ascending
# order) from the unsorted subarray is picked and moved to the sorted subarray.

class SelectionSort
  def sort(array)
    n = array.length
    for i in 0...n
      min = i
      for j in (i+1)...n
        if array[j] < array[min]
          temp = array[j]
          array[j] = array[min]
          array[min] = temp
        end
      end
    end
    a
  end
end

ss = SelectionSort.new
puts ss.sort([1,4,5,2,8,7,8,19])
