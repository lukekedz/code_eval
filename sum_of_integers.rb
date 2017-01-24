# https://www.codeeval.com/open_challenges/17/

File.open(ARGV[0]).each_line do |line|
	input    = line.split(",").map { |char| char.to_i }
	sums     = []
	temp_sum = 0

	input.each_with_index do |n, index|
		i = index
		
		while i < input.length
			sums.push ( temp_sum += input[i] )
			i += 1
		end

		temp_sum = 0
	end

	puts sums.max
end

