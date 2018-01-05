# Repeatedly swapping the adjacent elements if they are in wrong order.
# https://en.wikipedia.org/wiki/Bubble_sort

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
results = bs.sort([1,4,5,2,8,7,8,19])
puts "Sorted list: #{results}"
