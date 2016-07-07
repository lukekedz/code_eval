File.open(ARGV[0]).each_line do |line|
  input = line.split(" ")

  longest = ""
  input.each do |str|
    if str.length > longest.length then longest = str end
  end

  longest = longest.split(//)

  longest.each_with_index do |value, index|
    if (index - 1) != longest.length then print "*" * index end
    print value
    if (index - 1) != longest.length then print " " end
  end

  puts
end