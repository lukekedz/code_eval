File.open(ARGV[0]).each_line do |line|
	input = line.split(" ")

	ints = input[0].split(//)
	pattern = input[1].split(//)

	operator = ""
	pattern.each_with_index do |value, index|
		if value == "+" || value == "-" then operator = index end
	end

	front = ints[0...operator].join.to_i
	back  = ints[operator..-1].join.to_i

	puts front.send( pattern[operator].to_sym, back )
end