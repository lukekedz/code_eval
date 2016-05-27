File.open(ARGV[0]).each_line do |line|
	input_arr = line.split(" ")

	virus = 0
	antivirus = 0

	pipe = false

	# [1, 2, 3, 4, 5].split(3)              # => [[1, 2], [4, 5]]

	input_arr.split("|")
	puts input_arr

	# input_arr.each do |value|
	# 	if value == "|"
	# 		pipe = true
	# 		next
	# 	end

	# 	if pipe == false then virus     = virus + value.to_i(16)    end
	# 	if pipe == true  then antivirus = antivirus + value.to_i(2) end 
	# end

	# puts antivirus >= virus ? "True" : "False"
end