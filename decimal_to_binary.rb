File.open(ARGV[0]).each_line do |int|
	num = int.strip.to_i
	puts num.to_s(2)
end