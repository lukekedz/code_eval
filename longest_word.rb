File.open(ARGV[0]).each_line do |line|

  array = line.split(' ')
  longest = array[0]

  array.each do |word|
    if word.size > longest.size
      longest = word
    end
  end

  print longest
  puts

end