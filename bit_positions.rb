File.open(ARGV[0]).each_line do |line|
  args = line.split(",")
  args.map! { |str| str.to_i }

  arr = args[0].to_s(2).split("")

  if arr[-args[1]] == arr[-args[2]]
    p true
  else
    p false
  end

end