File.open(ARGV[0]).each_line do |line|
  rev_lines = line.split(" ").reverse

  i = 1
  rev_lines.each do |line|
    print line

    if i < rev_lines.length
      print " "
      i += 1
    end
  end

  puts
end