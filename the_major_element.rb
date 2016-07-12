File.open(ARGV[0]).each_line do |line|
	input = line.split(",")
	input.map! { |str| str.strip.to_i }

	counts = Hash.new 0
	input.each { |int| counts[int] += 1 }

	major_indicator = input.length / 2
	output = []
	counts.each do |key, value|
		if value >= major_indicator then output.push key end
	end

	puts output.empty? ? "None" : output
end