File.open(ARGV[0]).each_line do |line|
	input_arr = line.split(';')

	sum = input_arr[-1].strip.to_i
	input_arr.delete_at(-1)

	ints = input_arr[0].split(',').map { |char| char.to_i }
	pairs = []

	ints.each do |initial|
		ints.each do |inner|
			if initial != inner
				if initial + inner == sum

					if initial <= inner
						pairs << initial.to_s + "," + inner.to_s
					else
						pairs << inner.to_s + "," + initial.to_s
					end
				end
			end
		end
	end

	pairs = pairs.uniq
	pairs.length.times do |i|
		print ((i + 1) < pairs.length) ? pairs[i] + ";" : pairs[i]
	end

	if pairs.empty? then print "NULL" end

	puts
end