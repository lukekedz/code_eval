File.open(ARGV[0]).each_line do |line|
  input_arr = line.split(" ")
  pipe_jumper = (input_arr.length + 1) / 2

  bugs = 0
  input_arr.each_with_index do |str, index|
    if str == "|"
      break
    else
      left  = str.split(//)
      right = input_arr[index + pipe_jumper].split(//)

      left.each_with_index do |char, i|
        if char != right[i]
          bugs += 1
        end
      end

    end
  end

  case
  when bugs == 0
    puts "Done"
  when bugs <= 2
    puts "Low"
  when bugs <= 4
    puts "Medium"
  when bugs <= 6
    puts "High"
  when bugs > 6
    puts "Critical"
  end

end