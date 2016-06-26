File.open(ARGV[0]).each_line do |num|
	num = num.strip.to_i.to_s(2)
	binary = num.to_s.split(//).map { |char| char.to_i }
	puts binary.count(1)
end