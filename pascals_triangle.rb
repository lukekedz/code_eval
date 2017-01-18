File.open(ARGV[0]).each_line do |line|
	num = line.to_i
	triangle = [[1]]

	(num - 1).times do |n|
		n += 1

		new_level = []
		new_level.push triangle[n - 1][0]				

		triangle[n - 1].length.times do |i|
			left  = triangle[n - 1][i]
			right = triangle[n - 1][i + 1] ? triangle[n - 1][i + 1] : 0

			new_level.push (left + right)
		end 		

		triangle.push new_level
	end

	triangle.each do |t|
		t.each_with_index do |int, index|
			print int.to_s
			if (index - 1) != t.length then print " " end
		end
	end
	puts
end
