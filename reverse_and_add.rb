def reverse_to_i(str_or_int)
	str_or_int.to_s.reverse.to_i
end

def reverse_sum(sum)
	sum.to_s.strip.split("").reverse.join.to_i
end

File.open(ARGV[0]).each_line do |line|
	int   	     = line.to_i
	sum          = int + reverse_to_i(line)
	iterations   = 1
	reversed_sum = reverse_sum(sum)

	# per challenge, each test case has a solution taking less than 100 iterations
	while iterations < 100
		if sum == reversed_sum
			puts iterations.to_s + " " + sum.to_s
			break
		else
			iterations   += 1
			sum 	     = sum + reverse_to_i(sum)
			reversed_sum = reverse_sum(sum)
		end
	end
end
