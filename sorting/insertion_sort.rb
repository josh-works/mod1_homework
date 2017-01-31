require 'pry'
def insertion_sort(array)
  sorted = []
  sorted << array.first
  (array.length - 1).times do |x|

    value = array.shift
    insertion_index = 0
    insertion_index += 1 while insertion_index <= sorted.length + 1 && value > sorted[insertion_index]
    sorted.insert(insertion_index, value)
    # while insertion_index <= sorted.length + 1 && value > sorted[insertion_index]
    #   insertion_index += 1
    #   sorted.insert(insertion_index,value)
  end
  puts sorted
end
  #
  # (1..array.length-1).each do |i|
  #   value_to_insert = array.delete_at(i)
  #
  #   insertion_index = i
  #   insertion_index -= 1 while insertion_index > 0 && value_to_insert < array[insertion_index -1]
  #   binding.pry
  #   array.insert(insertion_index, value_to_insert)
  # end


x = [6, 8, 7, 2, 4, 0, 9, 3, 1, 5]
insertion_sort(x)
