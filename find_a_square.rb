File.open(ARGV[0]).each_line do |line|
  input = line.split(", ")

  coords = []
  input.map! do |str|
    str = str.strip[1..-2].split(",")
    coords.push [str[0].to_i, str[1].to_i]
  end
  puts coords.inspect



end