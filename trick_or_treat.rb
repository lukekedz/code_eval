File.open(ARGV[0]).each_line do |line|
	kids    = 0
	candies = 0

	input_arr = line.split(", ")
	input_arr.each do |str|
		splits = str.split(": ")
		splits[1] = splits[1].strip.to_i

		case splits[0]
		when "Vampires"
			kids    += splits[1]
			candies += splits[1] * 3
		when "Zombies"
			kids    += splits[1]
			candies += splits[1] * 4
		when "Witches"
			kids    += splits[1]
			candies += splits[1] * 5
		when "Houses"
			candies = candies * splits[1]
		end
	end

	puts candies / kids
end