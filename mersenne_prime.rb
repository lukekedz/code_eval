require 'prime'

File.open(ARGV[0]).each_line do |line|
	limit     = line.to_i
	mersennes = [limit]
	primes    = []
	output	  = []

	i = 1
	until mersennes.max > limit
		mersennes.push (2 ** i - 1)
		i += 1
	end
	mersennes.each { |mrs| if mrs >= limit then mersennes.delete(mrs) end }

	limit.times do |i|
		if Prime.prime? i
			primes.push i
		end 
	end

	primes.each do |prime|
		if mersennes.include? prime
			output.push prime
		end
	end

	output.each_with_index do |value, index|
		print value
		if (index + 1) != output.length then print ", " end
	end
	puts
end
