File.open(ARGV[0]).each_line do |line|
	array = line.split("; ")

	miles = []
	array.each do |item|
		splits = item.split(",")
		miles << splits[1].strip.to_i
	end

	miles.sort!

	miles.each_with_index do |value, index|
		if index == 0 then print value.to_s + "," end

		if (index + 1) != miles.length 
			print (miles[index + 1] - miles[index]).to_s
		end

		if index + 3 <= miles.length then print "," end
	end

	puts
end