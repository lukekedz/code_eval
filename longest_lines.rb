first_line = true
strings = []

File.open(ARGV[0]).each_line do |line|
	if first_line == true
		@output_count = line.to_i
		first_line = false
	else
		strings << line
	end
end

strings.sort! { |a,b| b.length <=> a.length }

@output_count.times do |i|
	puts strings[i]
end