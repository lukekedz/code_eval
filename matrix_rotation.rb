File.open(ARGV[0]).each_line do |line|
	input = line.split(" ")
	segment = (Math.sqrt input.length).to_i

	array = input.each_slice(segment).to_a
	transposed = array.transpose
	transposed.map! { |arr| arr.reverse }

	transposed.each_with_index do |array, index1|	
		array.each_with_index do |str, index2|
			print str

			if (index1 - 1) != transposed.length
				if (index2 - 1) != array.length
					print " "
				end
			end 
		end
	end

	puts
end