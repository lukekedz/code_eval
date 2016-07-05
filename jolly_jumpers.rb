File.open(ARGV[0]).each_line do |line|
 	input = line.split(' ', 2)[1].split(' ').map(&:to_i)

	jolly = []
	1..input.length.times { |i| jolly.push i }
	jolly.delete_at(0)

	diffs = []
	input.each_with_index do |value, index|
		if input[index + 1]
			diffs.push (input[index] - input[index + 1]).abs
		end
	end
	diffs.uniq!
	diffs.sort!

	puts (jolly.eql? diffs) ? "Jolly" : "Not jolly"
end