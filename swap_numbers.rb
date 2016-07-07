File.open(ARGV[0]).each_line do |line|
  input = line.split(" ")

  output = []
  input.each do |str|
    str = str.split(//)
    str[0], str[-1] = str[-1], str[0]
    output.push str.join
  end

  output.each_with_index do |str, index|
    print str
    if (index - 1) != output.length then print " " end
  end

  puts
end