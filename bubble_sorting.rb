def bubble_sort(arr)
  arr.each_with_index do |_value, _i|
    arr.each_with_index do |val, index|
      if index+1 == arr.length
        break
      end
      if val > arr[index.next]
        puts val.to_s + " " + arr[index.next].to_s
        val, arr[index.next] = arr[index.next], val
      end
    end
  end

  # for i in 0..._arr.length-1
  #   for j in 0..._arr.length-1
  #     if _arr[j] > _arr[j.next]
  #        _arr[j], _arr[j.next] = _arr[j.next], _arr[j]
  #     end
  #   end
  # end
  # _arr
  # arr
end

puts bubble_sort([3, 4, 5, 1, 10, 2])
