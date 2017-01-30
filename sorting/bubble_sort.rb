class BubbleSort
  def sort(input)
    (input.length - 1).times do
      input.map.with_index do |value, index|
        if input[(index + 1)] == nil
        elsif input[index] > input[(index + 1)]
          input[index], input[(index + 1)] = input[(index + 1)], input[index]
        end
      end
    end
    p input
  end
end

e = BubbleSort.new
collection = [10, 15, 6, 9, 14, 4, 2, 7, 0, 1, 13, 5, 8, 3, 11, 12]
e.sort(collection)

sorter = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])
