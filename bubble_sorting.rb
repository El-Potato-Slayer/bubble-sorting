# frozen_string_literal: true

def bubble_sort(arr)
  arr.each_with_index do |_value, _i|
    arr.each_with_index do |_val, index|
      break if index + 1 == arr.length

      arr[index] > arr[index.next] && (arr[index], arr[index.next] = arr[index.next], arr[index])
    end
    arr
  end
end

puts bubble_sort([3, 0, 128 - 3, -65, 45, 4, 5, 1, 10, 2])

def bubble_sort_by(arr)
  arr.each_with_index do |_value, _i|
    arr.each_with_index do |_val, index|
      break if index.next == arr.length

      difference = yield(arr[index], arr[index.next])
      difference.positive? && (arr[index], arr[index.next] = arr[index.next], arr[index])
    end
  end
  puts arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
