File.open(ARGV[0]).each_line do |line|
	span  = line.split(";")[0].to_i - 1
	g_l   = line.split(";")[1].split(" ").map { |char| char.to_i }
	gains = []
	
	i = 0
	until g_l[i + span] == nil
		
		j = i
		daily_gain = 0

		(span + 1).times do
			daily_gain += g_l[j]
			j += 1
		end

		gains.push daily_gain
		i += 1
	end

	max = gains.max > 0 ? gains.max : 0 
	puts max
end