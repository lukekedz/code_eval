File.open(ARGV[0]).each_line do |line|
	input = line.strip.split(' | ')
	
	teams = []
	input.each do |string|
		string.split(' ').each { |num| teams << num }
	end
	
	teams.map! { |t| t.to_i }
	sorted_teams = teams.uniq.sort

	hashed_teams = {}
	highest = ""
	sorted_teams.each do |team| 
		hashed_teams[team] = []
		highest = team
	end

	input.each_with_index do |string, index|
		string.split(' ').each do |num|
			num = num.to_i
			if hashed_teams[num]
				hashed_teams[num].push index + 1
			end			
		end
	end

	hashed_teams.each do |key, value|
		print key.to_s + ":"
		value.each_with_index do |v, index|
			print v
			if (index + 1) != value.length then print "," end
		end
		print ";"
		if key != highest then print " " end
	end

	puts
end