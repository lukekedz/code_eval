require 'json'

File.open(ARGV[0]).each_line do |menu|
	h = JSON.parse(menu)
	sum = 0

	h["menu"]["items"].each do |item|
		if item && item["label"] then sum += item["id"] end
	end

	puts sum
end
