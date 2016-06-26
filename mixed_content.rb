File.open(ARGV[0]).each_line do |line|
	input = line.split(",")
	input[-1] = input[-1].strip

	def is_number?(string)
	  true if Float(string) rescue false
	end

	strings = []
	nums    = []
	input.each do |char|
		is_number?(char) ? nums.push(char) : strings.push(char)
	end

	if strings.any?
		strings.each_with_index do |value, index|
			if (index + 1) != strings.length
				print value + ","
			else
				print value
			end
		end
	end

	if strings.any? && nums.any? then print "|" end

	if nums.any?
		nums.each_with_index do |value, index|
			if (index + 1) != nums.length
				print value + ","
			else
				print value
			end
		end
	end

	puts
end