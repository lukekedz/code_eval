File.open(ARGV[0]).each_line do |line|
	input = line.split(" ")
	input.map! { |str| str.to_i }

	cycle = ""
	cycle_found = false

	i = 0
	input.each_with_index do |value, index|

		i = index + 1
		until i == input.length

			if cycle_found == false && value == input[i]
				cycle_found = true

				cycle = input[i].to_s + " "

				j = index + 1
				until input[j] != input[i + 1]
					cycle = cycle + input[j].to_s + " "
					i += 1
					j += 1
				end

			end
			i += 1
		end
		# puts
	end

	cycle = cycle.split(" ")
	cut = 0
	i = 1
	until i == cycle.length
		if cycle[0] == cycle[i]
			cut = i
			break
		end
		i += 1
	end
	cycle.slice!(cut..-1)

	cycle.each_with_index do |num, index|
		print num.to_s
		if index != cycle.length then print " " end
	end

	puts
end