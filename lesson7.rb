array = [0, 9, 2, 7, 4, 5, 6, 3, 8, 1]
p array.sort!
p array.push(10)
array.pop
p array
array.shift
p array
array.unshift(0)
p array
p array.select { |item| item % 2 != 0 }
p array.select! { |item| item % 2 == 0 }
p array.reverse


