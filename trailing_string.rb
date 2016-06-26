File.open(ARGV[0]).each_line do |line|
	input = line.split(",")
	input[1] = input[1].strip

	start = input[0].length - input[1].length
	end_string = input[0][start..-1]

	if end_string == input[1]
		puts 1
	else
		puts 0
	end
end