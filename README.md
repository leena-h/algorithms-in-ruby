# 📖 Algorithms in Ruby
List of algorithms written in Ruby.

## Sort Algorithms

### Bubble Sort
Repeatedly swapping the adjacent elements if they are in wrong order.

```ruby
class BubbleSort
  def sort(numbers)
    numbers.count.times do
      numbers.each_with_index do |num, i|
        next_num = numbers[i+1]
        next if next_num.nil?
        if num > next_num
          numbers[i], numbers[i+1] = next_num, num
        end
      end
    end
    numbers
  end
end

bs = BubbleSort.new
puts bs.sort([1,4,5,2,8,7,8,19])
```

### Insertion Sort
Insertion sort builds the final sorted array (or list) one item at a time.

```ruby
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
```

### Merge Sort
Merge sort is a recursive algorithm that continually splits a list in half.
- If the list is empty or has one item, it is sorted by definition (the base case).
- If the list has more than one item, we split the list and recursively invoke a merge sort on both halves.
- Once the two halves are sorted, the fundamental operation, called a merge, is performed.

```ruby
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
```
### Selection Sort
The selection sort algorithm sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.

1) The subarray which is already sorted.
2) Remaining subarray which is unsorted.

In every iteration of selection sort, the minimum element (considering ascending orde) from the unsorted subarray is picked and moved to the sorted subarray.

```ruby
class SelectionSort
  def sort(array)
    n = array.length
    for i in 0...n
      min = i
      for j in (i+1)...n
        if array[j] < array[min]
          temp = array[j]
          array[min], array[j] = temp, array[min]
        end
      end
    end
    array
  end
end

ss = SelectionSort.new
puts ss.sort([1,4,5,2,8,7,8,19])
```
## Quick Sort
QuickSort is a Divide and Conquer algorithm. 
It picks an element as pivot and partitions the given array around the picked pivot.

There are many different versions of quickSort that pick pivot in different ways.
- Always pick first element as pivot.
- Always pick last element as pivot
- Pick a random element as pivot. (implemented below)
- Pick median as pivot.

```ruby
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
```

## Search Algorithms

### Linear Search
A linear search sequentially moves through your collection (or data structure) looking for a matching value.
```ruby
class LinearSearch
  def find_index(values, target)
    values.each do |v|
      return v if v == target
    end
    nil
  end
end

ls = LinearSearch.new
ls.find_index([5,2,7,8,1,9], 8)
```
