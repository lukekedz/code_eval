File.open(ARGV[0]).each_line do |num|
  puts num.to_i % 2 == 0 ? 1 : 0
end