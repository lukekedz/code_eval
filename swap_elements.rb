File.open(ARGV[0]).each_line do |line|
	input_arr = line.split(": ")

	nums = input_arr[0].split(" ").map { |char| char.to_i }

	ranges = input_arr[1].split(", ")
	ranges.map! { |r| r.strip }

	ranges.each do |r|
		swaps = r.split("-")

		first  = swaps[0].to_i
		second = swaps[1].to_i

		nums[first], nums[second] = nums[second], nums[first]
	end

	nums.each_with_index do |num, index|
		if index != (nums.length - 1)
			print num.to_s + " "
		else
			print num.to_s			
		end
	end

	puts
end