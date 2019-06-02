input = gets.to_i

n = -1
input.times { n += 2 }

j = -1
input.times do
  j += 2
  s = "*" * j
  puts s.rjust(n)
end

(input - 1).times do
  j -= 2
  s = "*" * j
  puts s.rjust(n)
end
