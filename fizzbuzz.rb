File.open(ARGV[0]).each_line do |line|

  args = line.split(" ")
  args.map! { |str| str.to_i }
  output = []

  for i in 1..args[2]
    if i % args[0] == 0 && i % args[1] == 0
      output.push("FB")
    elsif i % args[0] == 0
      output.push("F")
    elsif i % args[1] == 0
      output.push("B")
    else
      output.push(i)
    end
  end

  i = 1

  output.each do |char|
    print char
      if i < output.length
        print " "
        i += 1
      else
        puts
      end
  end

end
