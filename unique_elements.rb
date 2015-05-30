File.open(ARGV[0]).each_line do |line|
  array = line.split(',')
  array.map! {|char| char.to_i }
  array = array.uniq

  i = 0
  while i < array.length - 1
    print array[i].to_s + ","
    i += 1
  end

  print array[i].to_s
  puts
end