# frozen_string_literal: true

def bubble_sort(arr)
  arr.each_with_index do |_value, _i|
    arr.each_with_index do |_val, index|
      break if index + 1 == arr.length

      # puts "val is #{val} index is #{arr[index]}"
      arr[index] > arr[index.next] && (arr[index], arr[index.next] = arr[index.next], arr[index])
    end
    arr
  end
end

puts bubble_sort([3, 0, 128 - 3, -65, 45, 4, 5, 1, 10, 2])
