def even_odd(arr)
  odd = []
  even = []
  final = []
  arr.each do |num|
    if num % 2 == 0
      even.append(num)
    elsif
      odd.append(num)
    else
        final.append(num)
  end
  (0..(arr.length-1)).each do |i|
    final.append(even[i])
    final.append(odd[i])
  end
  return final
end
arr = [4, 5, 7, 8, 9, 9, 10]
puts even_odd(arr)



