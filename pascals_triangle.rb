# https://www.codeeval.com/open_challenges/66/

File.open(ARGV[0]).each_line do |input|
	tree = [[1]]

	# root created, iterate one less than input depth
	(input.to_i - 1).times do |n|
		new_level = []
		new_level.push tree[n][0]

		tree[n].length.times do |i|
			left  = tree[n][i]
			right = tree[n][i + 1] ? tree[n][i + 1] : 0

			new_level.push (left + right)
		end 		

		tree.push new_level
	end

	tree.flatten!.each_with_index do |int, index|
		print int.to_s
		if (index - 1) != tree.length then print " " end
	end
	puts
end
