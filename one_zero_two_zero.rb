File.open(ARGV[0]).each_line do |line|
	input = line.split(" ").map! { |str| str.to_i }
	count = input[0]
	range = input[1]

	binaries = []
	range.times { |i| binaries.push (i + 1).to_s(2) }

	output = 0
	binaries.each do |str|
		if count == str.count("0")
			output += 1
		end
	end

	puts output
end