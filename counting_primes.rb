require 'prime'

File.open(ARGV[0]).each_line do |line|
	input_arr = line.split(',')
	input_arr.map! { |int| int.strip.to_i }

	num_of_primes = 0
	(input_arr[0]..input_arr[1]).each do |int|
		if Prime.prime?(int) then num_of_primes += 1 end
	end
	
	puts num_of_primes
end