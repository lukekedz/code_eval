total = 0

File.open(ARGV[0]).each_line do |line|
  num = line.to_i
  total += num
end

p total