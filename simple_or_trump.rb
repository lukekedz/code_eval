File.open(ARGV[0]).each_line do |line|
	input = line.split(" | ")

	trump_suit = input[1].strip
	cards = input[0].split(" ")

	output = []
	cards.each do |card|
		if card[-1] == trump_suit then output.push card end
	end

	face_values = { "J" => 11, "Q" => 12, "K" => 13, "A" => 14 }

	if output.length == 1
		puts output
	else
		value1 = cards[0].delete cards[0][-1]
		value1 = face_values[value1] || value1.to_i

		value2 = cards[1].delete cards[1][-1]
		value2 = face_values[value2] || value2.to_i

		if value1 > value2
			puts cards[0]
		elsif value1 < value2
			puts cards[1]
		else
			puts cards[0].to_s + " " + cards[1].to_s
		end
	end

end