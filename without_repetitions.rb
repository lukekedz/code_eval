File.open(ARGV[0]).each_line do |line|
	input = line.strip

	ltr_array = input.split(//)

	ltr_array.each_with_index do |char, index|
		if char == ltr_array[index + 1]
			ltr_array.delete_at(index + 1)

			until char != ltr_array[index + 1]
				ltr_array.delete_at(index + 1)
			end
		end
	end

	puts ltr_array.join
end