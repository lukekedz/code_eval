File.open(ARGV[0]).each_line do |num|
  input_arr = num.strip().to_s.split(//)
  input_arr.map! { |str| str.to_i }
  sum_arr = []

  input_arr.each do |num|
    sum_arr.push( num ** input_arr.count )
  end

  print sum_arr.inject(:+) == num.to_i ? "True" : "False"
  puts
end