File.open(ARGV[0]).each_line do |line|
	input = line.split(', ')
	
	remove = input[1].split(//)
	remove.map! { |char| char.strip }
	remove.delete_if { |char| char == "" }

	input = input[0].split(//)

	remove.each { |r| input.delete_if { |ltr| ltr == r} }

	puts input.join
end