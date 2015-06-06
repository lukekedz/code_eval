File.open(ARGV[0]).each_line do |words|
  words = words.split(" ")

  words.each do |word|
    chars = word.split(//)

    chars.each do |char|
      if /[[:upper:]]/.match(char)
        print char.downcase
      elsif /[[:lower:]]/.match(char)
        print char.upcase
      else
        print char
      end
    end
    print " "
  end

  puts
end