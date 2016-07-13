File.open(ARGV[0]).each_line do |line|
	array = line.split(';')[1].split(',').map(&:strip)

	counts = Hash.new 0
	array.each { |str| counts[str] += 1 }

	counts = counts.invert
	puts counts[2]
end