# 📖 Algorithms in Ruby
List of algorithms written in Ruby.

## List search

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

## Sort
- [Bubble Sort](https://github.com/leena-io/algorithms-in-ruby/blob/master/sort/bubble_sort.rb)
- Heap Sort
- [Insertion Sort](https://github.com/leena-io/algorithms-in-ruby/blob/master/sort/insertion_sort.rb)
- [Merge Sort](https://github.com/leena-io/algorithms-in-ruby/blob/master/sort/merge_sort.rb)
- [Selection Sort](https://github.com/leena-io/algorithms-in-ruby/blob/master/sort/selection_sort.rb)
- [Quick Sort](https://github.com/leena-io/algorithms-in-ruby/blob/master/sort/quick_sort.rb)
