File.open(ARGV[0]).each_line do |line|
	people_count = line.split(",")[0].to_i
	people_array = []
	people_count.times { |i| people_array.push i }

	interval = line.split(",")[1].to_i

	order = []
	i = 0

	people_count.times do
		loop_interval = interval

		until loop_interval == 0
			
			if i >= people_count

				i = 0

			else

				if people_array[i] != nil 
					if loop_interval == 1 && people_array[i] != nil
						order.push i
						people_array[i] = nil
					elsif loop_interval == 1 && people_array[i] == nil
						loop_interval += 1
					end

					loop_interval -= 1
				end
				
				i += 1
			end
		end



	end

	order.each_with_index do |value, index|
		print value.to_s
		if (index - 1) != order.length then print " " end
	end
	puts
end