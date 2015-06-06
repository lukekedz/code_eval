File.open(ARGV[0]).each_line do |words|
  words = words.split(" ")

  i = 1
  words.each do |word|
    chars = word.split(//)
    chars[0] = chars[0].upcase
    word = chars.join

    if i < words.length
      print word + " "
      i += 1
    else
      print word
    end
  end

  puts
end
