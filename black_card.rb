File.open(ARGV[0]).each_line do |line|
	input_arr = line.split(' ')

	pipe = false
	black_card = 0
	pirates = []

	input_arr.each do |value|
		if value == "|"
			pipe = true
			next
		end

		if pipe == false then pirates << value            end
		if pipe == true  then black_card = value.to_i - 1 end
	end

	i = 0
	until pirates.length == 1

		pirates.each_with_index do |prt, index|
			
			if i == black_card
				pirates.delete_at(index)
				i = 0
				break
			else 
				i += 1
			end
		end
	end

	puts pirates
end 


