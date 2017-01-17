File.open(ARGV[0]).each_line do |line|

	matrix = []
	line.split(",").each do |element|
		matrix.push element.strip.split("")
	end

	gaps     = []
	counter  = 0
	init_seq = true	

	matrix.each do |row_array|

		row_array.each do |char|
			
			if char == "." && init_seq == true
				counter += 1
			else
				if char == "Y"
					init_seq = false
				end
			end

		end

		gaps.push counter
		counter  = 0
		init_seq = true	
	end

	puts gaps.min
end