def reverse_to_i(str_or_int)
	str_or_int.to_s.reverse!.to_i
end

def sum_half_length(integer)
	integer.to_s.length / 2
end

def summed_array_halves(array, half_length)
	array.each_slice(half_length).to_a
end

def compare_halves(array)
	array[0] == array[1] ? true : false
end

def output_string(sum, iterations)
	puts iterations.to_s + " " + sum.to_s
end

File.open(ARGV[0]).each_line do |line|
	int   = line.to_i
	r_int = reverse_to_i(line)

	sum 		  = int + r_int
	sum_length    = sum.to_s.length
	iterations    = 0
	is_palindrome = false

	summed_integer_array = sum.to_s.strip.split("")

	while is_palindrome == false && iterations < 100
		if sum_length % 2 == 0
			half_length = sum_half_length(sum)
			
			comparison_array = summed_array_halves(summed_integer_array, half_length)
			comparison_array[0].reverse!
			
			is_palindrome = compare_halves(comparison_array)
		else
			half_length = sum_half_length(sum)
			summed_integer_array.delete_at(half_length)
			
			comparison_array = summed_array_halves(summed_integer_array, half_length)
			comparison_array[0].reverse!
			
			is_palindrome = compare_halves(comparison_array)
		end

		iterations += 1

		if is_palindrome == true
			output_string(sum, iterations)
		else
			sum 	   			 = sum + reverse_to_i(sum)
			sum_length 			 = sum.to_s.length
			summed_integer_array = sum.to_s.strip.split("")
		end
	end
end
