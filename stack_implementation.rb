File.open(ARGV[0]).each_line do |line|
	reversed_input = []
	integers = line.split(" ")

	integers.each do |int|
		reversed_input.unshift(int)
	end

	reversed_input.length.times do |i|
		if i % 2 == 0
			print reversed_input[i] + " "
		end
	end

	puts
end


