# https://www.codeeval.com/open_challenges/66/

File.open(ARGV[0]).each_line do |input|
	triangle = [[1]]

	# root created, iterate one less than input depth
	(input.to_i - 1).times do |n|
		new_level = []
		new_level.push triangle[n][0]

		triangle[n].length.times do |i|
			left  = triangle[n][i]
			right = triangle[n][i + 1] ? triangle[n][i + 1] : 0

			new_level.push (left + right)
		end 		

		triangle.push new_level
	end

	triangle.flatten!.each_with_index do |int, index|
		print int.to_s
		if (index - 1) != triangle.length then print " " end
	end
	puts
end
