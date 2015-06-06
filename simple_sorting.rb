File.open(ARGV[0]).each_line do |num_line|
  nums = num_line.split(" ")
  nums.map! { |num| num.to_f }

  nums = nums.sort

  nums.each do |num|
    length = num.to_s.split('.').last.size

    if length < 3
      print num.to_s
      until length >= 3
        print "0"
        length += 1
      end
      print " "
    else
      print num.to_s + " "
    end

  end

  puts
end