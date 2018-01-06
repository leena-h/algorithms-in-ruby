# Merge sort is a recursive algorithm that continually splits a list in half.
# If the list is empty or has one item, it is sorted by definition (the base case).
# If the list has more than one item, we split the list and recursively invoke
# a merge sort on both halves.
# Once the two halves are sorted, the fundamental operation, called a merge, is performed.

# http://interactivepython.org/runestone/static/pythonds/SortSearch/TheMergeSort.html

class MergeSort
  def sort(list)
    return list if list.size <= 1
    mid   = list.size / 2
    left  = list[0...mid]
    right = list[mid...list.size]
    merge(sort(left), sort(right))
  end

  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted.concat(left).concat(right)
  end
end

ms = MergeSort.new
puts ms.sort([1,4,5,2,8,7,8,19])
