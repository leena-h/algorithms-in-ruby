# A linear search sequentially moves through your collection (or data structure)
# looking for a matching value.
# https://en.wikipedia.org/wiki/Linear_search

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
