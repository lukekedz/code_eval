File.open(ARGV[0]).each_line do |line|
  args = line.split("")
  args.map! { |str| str.to_i }

  p args.inject(:+)
end