File.open(ARGV[0]).each_line do |num|
  num = num.to_i
  fibo = [0, 1]

  for i in 2..num
    fibo.push(fibo[-1] + fibo[-2])
  end

  if num == 0
    print fibo[0]
    puts
  elsif num == 1
    print fibo[1]
    puts
  else
    print fibo[-1]
    puts
  end

end


