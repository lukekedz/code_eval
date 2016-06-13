File.open(ARGV[0]).each_line do |line|
	age = line.to_i

	case age
	when 0..2
		print "Still in Mama's arms"
	when 3..4
		print "Preschool Maniac"
	when 5..11
		print "Elementary school"
	when 12..14
		print "Middle school"
	when 15..18
		print "High school"
	when 19..22
		print "College"
	when 23..65
		print "Working for the man"
	when 66..100
		print "The Golden Years"
	else
		print "This program is for humans"
	end

	puts
end