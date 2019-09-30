def print_template(array)
  array.each_with_index do |value, index|
    value.each_with_index do |value2, index|
      print value2
      print ' | ' if index != 2
    end
    puts "\n----------" if index != 2
  end
  puts ""
end

def input_shape(array, input)
  shape = @shape_flag ? "◯": "×"
  case input
  when 1
    array[0][0] = shape if array[0][0].instance_of?(Integer)
  when 2
    array[0][1] = shape if array[0][1].instance_of?(Integer)
  when 3
    array[0][2] = shape if array[0][2].instance_of?(Integer)
  when 4
    array[1][0] = shape if array[1][0].instance_of?(Integer)
  when 5
    array[1][1] = shape if array[1][1].instance_of?(Integer)
  when 6
    array[1][2] = shape if array[1][2].instance_of?(Integer)
  when 7
    array[2][0] = shape if array[2][0].instance_of?(Integer)
  when 8
    array[2][1] = shape if array[2][1].instance_of?(Integer)
  when 9
    array[2][2] = shape if array[2][2].instance_of?(Integer)
  end
end

def judgment?(array)
  if array[0][0] == array[0][1] && array[0][0] == array[0][2] || array[1][0] == array[1][1] && array[1][0] == array[1][2] || array[2][0] == array[2][1] && array[2][0] == array[2][2] || array[0][0] == array[1][0] && array[0][0] == array[2][0] || array[0][1] == array[1][1] && array[0][1] == array[2][1] || array[0][2] == array[1][2] && array[0][2] == array[2][2] || array[0][0] == array[1][1] && array[0][0] == array[2][2] || array[0][2] == array[1][1] && array[0][2] == array[2][0]
    print_template(array)
    shape = @shape_flag ? "◯": "×"
    puts "winner: " + shape
    exit
  elsif fulfilled?(array)
    print_template(array)
    exit
  end
end

def fulfilled?(array)
  array.each do |value|
    value.each do |value2|
      # return false if value2 =~ /\d/
      return false if value2.instance_of?(Integer)
    end
  end
  return true
end

board_array = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
@shape_flag = true

while true do
  print_template(board_array)
  print "数字を入力してください: "
  user_input = gets.to_i
  input_shape(board_array, user_input)
  judgment?(board_array)
  @shape_flag = !@shape_flag
  puts "\n\n"
end
