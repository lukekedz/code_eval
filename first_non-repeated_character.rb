File.open(ARGV[0]).each_line do |line|
	chars = line.strip.split("")
	first_nr_char = ""
	not_repeated = false

	if chars.length > 1
		chars.each_with_index do |char, index|
			
			chars.each_with_index do |c, i|
				if index != i
					if char != c
						not_repeated = true
					else
						not_repeated = false
						break
					end
				end
			end

			if not_repeated == true
				first_nr_char = char
				break
			end
		end
	else
		first_nr_char = chars[0]
	end

	if first_nr_char != "" 
		puts first_nr_char 
	else
		puts
	end
end
