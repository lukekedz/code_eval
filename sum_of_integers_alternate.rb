# https://www.codeeval.com/open_challenges/17/
# input = '-10,2,3,-2,0,5,-15'
# 1. output all contiguous subsets
# 2. output all combinations of input

File.open(ARGV[0]).each_line do |line|
	input    = line.split(",").map { |char| char.to_i }
	subsets  = []

	# 1. outputs contiguous subsets
	# temp_arr = []

	# input.each_with_index do |n, index|
	# 	i = index
		
	# 	while i < input.length
	# 		temp_arr.push input[i]
	# 		subsets.push temp_arr.clone
	# 		i += 1
	# 	end

	# 	temp_arr = []
	# end

	# subsets.each { |sub| puts sub.inspect }

	# 2. outputs all possible subset combinations 
	i = 1
	while i <= input.length
		subsets << input.combination(i).to_a
		i += 1
	end

	output = []
	subsets.each do |sub|
		sub.each { |s| output.push s }
	end
	
	puts output.inspect
	puts output.count
end
