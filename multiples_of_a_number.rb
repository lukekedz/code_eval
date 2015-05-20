File.open(ARGV[0]).each_line do |line|
  args = line.split(",")
  args.map! { |str| str.to_i }

  args.push(args[1])

  while args[1] <= args[0]
    args[1] = args[1] + args[2]
  end

  print args[1]
  puts
end