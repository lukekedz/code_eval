File.open(ARGV[0]).each_line do |line|
	input = line.split('|')

	vertices_strings = input[0].split(" ")
	vertices = []
	i = 0
	vertices_strings.each do |string|
		string = string[1..-2]
		coords = string.split(",")
		vertices[i] = [coords[0].to_i, coords[1].to_i ]
		i += 1
	end
	# puts vertices.inspect
	width  = (vertices[0][0] - vertices[1][0]).abs
	# puts "width: " + width.to_s
	height = (vertices[0][1] - vertices[1][1]).abs
	# puts "height: " + height.to_s


	bricks_string = input[1].strip.split(';')
	bricks = {}
	bricks_string.each do |string|
		string = string[1..-2]

		brick = string.split(" ")
		br_index = brick[0].to_i

		brick.each_with_index do |br, index|
			if index == 0
				bricks[br_index] = []
			else
				br = br[1..-2]
				br_array = br.split(',')
				br_array.map! { |char| char.to_i }
				bricks[br_index].push br_array
			end
		end
	end
	# puts bricks.inspect

	output = []

	i = 1
	while bricks[i]
		brick_width  = (bricks[i][0][0] - bricks[i][1][0]).abs
		brick_height = (bricks[i][0][1] - bricks[i][1][1]).abs

		if brick_width <= width && brick_height <= height
			output.push i
		end
		i += 1
	end

	if output.length > 0
		output.each_with_index do |value, index|
			print value
			if (index + 1) != output.length then print "," end
		end
	else
		print "-"
	end
	
	puts
end