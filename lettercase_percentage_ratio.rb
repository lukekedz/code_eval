File.open(ARGV[0]).each_line do |line|
	input = line.strip.split(//)
	low, upp = 0, 0
	input.each { |char| char == char.downcase ? low += 1 : upp += 1 }

	low_ratio = '%.2f' % ((low.to_f / input.length) * 100)
	upp_ratio = '%.2f' % ((upp.to_f / input.length) * 100)

	puts "lowercase: " + low_ratio + " uppercase: " + upp_ratio
end