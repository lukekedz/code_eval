File.open(ARGV[0]).each_line do |line|
	input_arr = line.split(';')

	jumbled = input_arr[0].split(' ')
	order   = input_arr[1].split(' ').map { |value| value.to_i - 1 }
	
	sentence = {}
	sentence_count = jumbled.length

	sentence_count.times do |i|
		if !(order.include?(i)) 
			sentence[i] = jumbled[-1]
		end
	end

	jumbled.each_with_index do |value, index|
		sentence[order[index]] = value
	end

	sentence_count.times do |i|
		print i < sentence_count ? sentence[i] + " " : sentence[i]
	end

	puts
end