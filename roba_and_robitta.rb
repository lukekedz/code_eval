File.open(ARGV[0]).each_line do |line|
	@flattened_field = []
	@length = 0 
	@current_location = [0,0]

	def right
		@width.times do |t|
			@flattened_field.push [@current_location[0], (@current_location[0] + t)]
			@length += 1
		end

		@height -= 1
		@current_location[0] = @flattened_field[-1][0] + 1
		@current_location[1] = @flattened_field[-1][1]
	end

	def down
		@height.times do |t|
			@flattened_field.push [@current_location[0], @current_location[1]]
			@current_location[0] += 1
			@length += 1
		end

		@width -= 1
		@current_location[0] = @flattened_field[-1][0]
		@current_location[1] = @flattened_field[-1][1] - 1
	end

	def left
		@width.times do |t|
			@flattened_field.push [@current_location[0], (@current_location[1] - t)]
			@length += 1
		end

		@height -= 1
		@current_location[0] = @flattened_field[-1][0] - 1
		@current_location[1] = @flattened_field[-1][1]
	end

	def up
		@height.times do |t|
			@flattened_field.push [(@current_location[0]), @current_location[1]]
			@current_location[0] -= 1
			@length += 1
		end

		@width -= 1
		@current_location[0] = @flattened_field[-1][0]
		@current_location[1] = @flattened_field[-1][1] + 1
	end
	
	input = line.split(" | ")
	field_coords = input[0]
	field_coords = field_coords.split("x")
	field_coords.map! { |str| str.to_i }

	@width  = field_coords[0]
	@height = field_coords[1]

	length = field_coords[0] * field_coords[1]

	field = []
	field_coords[1].times do
		field.push []
	end

	field.each do |f|
		field_coords[0].times do |t|
			f.push t
		end
	end

	robitta = input[1]
	robitta = robitta.split(" ")
	robitta.map! { |str| str.to_i }

	robitta[0] = robitta[0] - 1
	robitta[1] = robitta[1] - 1

	until length == @length
		right()
		down()
		left()
		up()
	end

	output = ""
	@flattened_field.each_with_index do |value, index|
		if value == robitta
			output = index
		end
	end

	puts output
end