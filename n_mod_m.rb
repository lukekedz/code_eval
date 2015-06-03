File.open(ARGV[0]).each_line do |nums|
  nums = nums.strip().to_s.split(',')
  nums.map! { |str| str.to_i }

  div = nums[0] / nums[1]
  p nums[0] - (div * nums[1])
end