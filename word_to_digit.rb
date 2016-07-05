File.open(ARGV[0]).each_line do |line|
	input = line.split(";")
	input[-1] = input[-1].strip

	hashy = { "zero"  => 0,
			  "one"   => 1,
			  "two"   => 2,
			  "three" => 3,
			  "four"  => 4,
			  "five"  => 5,
			  "six"   => 6,
			  "seven" => 7,
			  "eight" => 8,
			  "nine"  => 9,
			}

	input.each { |str| print hashy[str] }
	puts
end