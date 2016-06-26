File.open(ARGV[0]).each_line do |line|
	letters = line.strip.split(//)
	letters.map!    { |ltr| ltr.downcase }
	letters.keep_if { |ltr| ltr != " "   }
	
	missing = []

	("a".."z").each do |ltr|
		if !(letters.include?(ltr)) then missing.push(ltr) end
	end

	puts missing.empty? ? "NULL" : missing.join		
end
