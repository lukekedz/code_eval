File.open(ARGV[0]).each_line do |line|
	input = line.split(' | ')
	iterate_down = input.length - 1
	iterate_left = input[0].length - 1
	combo = ["c", "d", "e", "o"]
	count = 0

	iterate_down.times do |i|
		iterate_left.times do |j|
			ltr_sq = []

			ltr_sq.push input[i][j]     
			ltr_sq.push input[i][j + 1] 
			ltr_sq.push input[i + 1][j]     
			ltr_sq.push input[i + 1][j + 1] 
			
			if ltr_sq.sort == combo then count += 1 end
		end
	end

	puts count
end
