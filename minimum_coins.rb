File.open(ARGV[0]).each_line do |num|
	total = num.strip.to_i
	adders = [5, 3, 1]
	subtotal, min_coins = 0, 0

	adders.each do |adder|
		until subtotal >= total
			subtotal  += adder
			min_coins += 1
		end

		if subtotal == total 
			puts min_coins
			break
		else
			subtotal  -= adder
			min_coins -= 1
		end
	end

end