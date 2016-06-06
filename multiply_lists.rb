File.open(ARGV[0]).each_line do |line|
	input_arr = line.split("| ")

	list1 = input_arr[0].split(" ").map { |char| char.to_i }
	list2 = input_arr[1].split(" ").map { |char| char.to_i }

	list1.each_with_index do |value, index|
		if index != (list1.length - 1)
			print (list1[index] * list2[index]).to_s + " "
		else
			print (list1[index] * list2[index]).to_s			
		end
	end

	puts
end
