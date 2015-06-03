File.open(ARGV[0]).each_line do |num|
  def self_describing(num)
    num = num.strip().to_s.split(//)
    num.map! { |str| str.to_i }

    for i in num
      if num[i] != num.count(i)
        return false
      end
    end
  end

  p self_describing(num) ? 1 : 0
end
