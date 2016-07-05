File.open(ARGV[0]).each_line do |code|
  code = code.split(" ")
  string = code[0]
  binary = code[1]

  i = 0
  while i < string.length
    binary[i].to_i == 1 ? string[i] = string[i].upcase! : string[i]
    i += 1
  end

  puts string
end