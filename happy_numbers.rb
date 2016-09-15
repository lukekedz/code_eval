def sum_sq(num, i)
  if num.to_s.length > 1
    numbers = num.to_s.split(//)
    num = 0

    numbers.each { |n| num += n.to_i ** 2 }
  else
    num = num ** 2
  end

  i += 1
  if num == 1 || i > 1000
    num
  else
    sum_sq(num, i)
  end
end

File.open(ARGV[0]).each_line do |num|
  num = sum_sq(num.strip.to_i, 1)
  puts num == 1 ? 1 : 0
end