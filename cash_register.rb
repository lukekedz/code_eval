File.open(ARGV[0]).each_line do |line|
	input = line.split(";")
	price = input[0].strip.to_f
	pymnt = input[1].strip.to_f

	change = (pymnt - price).round(2)

	register = [ "ONE HUNDRED", "FIFTY", "TWENTY", "TEN", "FIVE", "TWO", "ONE", "HALF DOLLAR", "QUARTER", "DIME", "NICKEL", "PENNY" ]
	monies   = [100.00, 50.00, 20.00, 10.00, 5.00, 2.00, 1.00, 0.50, 0.25, 0.10, 0.05, 0.01]
	change_string_counts = []

	monies.each do |m|
		if change >= m
			change_string_counts.push( (change / m).to_i )
			change = (change - (change_string_counts[-1] * m)).round(2)
		else
			change_string_counts.push(0)
		end
	end

	output = []
	change_string_counts.each_with_index do |value, index|
		if value != 0
			value.times { output.push(register[index]) }
		end
	end

	if pymnt < price
		print "ERROR"
	elsif pymnt == price
		print "ZERO"
	else
		output.each_with_index do |value, index|
			print value
			if ( index + 1 ) != output.length then print "," end
		end
	end

	puts
end