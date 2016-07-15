File.open(ARGV[0]).each_line do |line|
	input = line.split(" ").map! { |str| str.to_i }

	counts = Hash.new(0)
	input.each { |v| counts[v] += 1 }

	uniques = []
	counts.each do |key, value|
		if counts[key] == 1 then uniques.push key end
	end

	min = uniques.min
	winner = nil

	input.each_with_index do |value, index|
		if value == min then winner = index + 1 end
	end

	puts winner ? winner : 0
end