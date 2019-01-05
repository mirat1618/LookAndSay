arr = [1,2,1,1]

arr_c = []
i = 1
arr.each_with_index do |num, ind|
  if num == arr[ind + 1]
    i += 1
    next
  end

  arr_c << i
  arr_c << num

  i = 1
end

p arr_c