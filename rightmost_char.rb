File.open(ARGV[0]).each_line do |line|
  if line == "\n"

  else
    phrase = line.split(',').map(&:strip)

    if phrase[0].rindex(phrase[1]) == nil
     p -1
    else
     p phrase[0].rindex(phrase[1])
    end
  end
end