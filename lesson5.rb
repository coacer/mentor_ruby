input = gets.to_i

n = -1
input.times { n += 2 }

j = 1
input.times do
  s = "*" * j
  puts s.rjust(n)
  j += 2
end
