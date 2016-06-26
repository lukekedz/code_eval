File.open(ARGV[0]).each_line do |line|
	input_arr = line.split('|')

	iterations = input_arr[-1].strip.to_i
	input_arr.delete_at(-1)

	ints = input_arr[0].split(' ').map { |char| char.to_i }

	j = 0
	iterations.times do |i|
		
		while j < ints.length
			
			if ints[j + 1] && ( ints[j] > ints[j + 1] )
				
				ints[j], ints[j + 1] = ints[j + 1], ints[j]
				j = 0
				break
			else
				j += 1
			end
		end
	end

	ints.length.times do |i|
		print ((i + 1) < ints.length) ? ints[i].to_s + " " : ints[i].to_s
	end

	puts
end