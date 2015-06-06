File.open(ARGV[0]).each_line do |word|
  words = word.split(" ")
  print words[-2]
  puts
end
