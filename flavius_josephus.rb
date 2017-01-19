File.open(ARGV[0]).each_line do |line|
	population = line.split(",")[0].to_i
	interval   = line.split(",")[1].to_i
	lineup     = []
	population.times { |i| lineup.push i }

	order = []
	i = 0

	population.times do
		# reset interval each time a person is pushed into the final order
		loop_interval = interval

		until loop_interval == 0
			if i >= population
				# reached the end of the array, restart at lineup[0] 
				i = 0
			else
				if lineup[i] != nil 
					if loop_interval == 1
						order.push i
						lineup[i] = nil
					end

					loop_interval -= 1
				end
				
				i += 1
			end
		end
	end

	# display value according to code_eval requirement
	order.each_with_index do |value, index|
		print value.to_s
		if (index - 1) != order.length then print " " end
	end
	puts
end