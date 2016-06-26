File.open(ARGV[0]).each_line do |line|
	input = line.split(" | ")

	wines = input[0].split(" ")
	ltrs  = input[1].strip.split(//)

	output = []

	wines.each do |wine|
		count = 0 
		wine_arr = wine.split(//)

		ltrs.each do |ltr|
			if wine_arr.include? ltr
				count += 1
				delete_index = wine_arr.index(ltr)
				wine_arr.delete_at(delete_index)
			end
		end

		if count == ltrs.length
			output.push(wine)
		end

	end

	if output.length == 0
		print "False"
	else
		output.each_with_index do |value, index|
			print value

			if (index - 1) != output.length then print " " end
		end
	end

	puts
end