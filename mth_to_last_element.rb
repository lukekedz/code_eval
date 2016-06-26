File.open(ARGV[0]).each_line do |line|
	input = line.split(" ")
	input.reverse!
	index = input[0].to_i

	if index <= input.length then puts input[index] end
end