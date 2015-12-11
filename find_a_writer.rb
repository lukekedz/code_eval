File.open(ARGV[0]).each_line do |line|
  line = line.split(//)
  position = line.detect{ |data| data == " " }
  line.index(position)

  i = 0
  line.each do |char|
    if line[i] = char
      p "yes!"
      i += 1
    else
      p no
      i += 1
    end
  end



end
