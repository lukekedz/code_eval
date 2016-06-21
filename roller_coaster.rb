File.open(ARGV[0]).each_line do |line|
	input = line.strip
	input = input.split(//)

	upcase = 1

	input.each_with_index do |char, index|
		if char == " " || char == "." || char == ":" || char == ","
			print char
		elsif upcase == 1
			print char.upcase
			upcase = 0
		elsif upcase == 0
			print char.downcase
			upcase = 1
		end
	end

	puts
end