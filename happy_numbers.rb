File.open(ARGV[0]).each_line do |num|

  num = num.to_i

  if num == 1
    p num
  end

  while num != 1
    num = num.to_s.split(//)
    num.map! { |str| str.to_i * str.to_i }
    num = num.inject(:+)
      if num == 1
        p num
      else

      end
  end

end