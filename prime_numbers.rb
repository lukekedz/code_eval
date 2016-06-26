require 'prime'

File.open(ARGV[0]).each_line do |num|
	num = num.strip.to_i
	output = []

	num.times { |i| output << i.to_s if Prime.prime?(i) }

	output.each_with_index do |value, index|
		print ( index + 1 ) == output.length ? value : value + ","
	end

	puts
end
