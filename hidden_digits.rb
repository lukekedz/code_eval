File.open(ARGV[0]).each_line do |line|
	input = line.split(//)

	code = { "a" => 0, 
		     "b" => 1, 
		     "c" => 2, 
		     "d" => 3, 
		     "e" => 4, 
		     "f" => 5, 
		     "g" => 6, 
		     "h" => 7, 
		     "i" => 8, 
		     "j" => 9 }

	digits = false
	input.each do |char| 
		if code.has_key?(char)
			digits = true
			print code[char]
			next 
		end

		if char == "0"
			digits = true
			print char
			next
		end

		if char.to_i != 0
			digits = true
			print char
			next
		end
	end

	if digits == false
		print "NONE"
	end

	puts
end