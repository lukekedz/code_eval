File.open(ARGV[0]).each_line do |line|
	input = line.split(" ").map! { |str| str.to_i }

	counter = 0
	i = 0
	input.each_with_index do |value, index|
		while value == input[i]
			counter += 1
			i += 1
		end

		if counter == 0
			next
		else
			print counter.to_s + " " + value.to_s
			if (index + 1) != input.length then print " " end

			counter = 0
		end
	end

	puts
end