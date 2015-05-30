File.open(ARGV[0]).each_line do |line|
  array = line.split(';')
  array1 = array[0].split(',')
  array2 = array[1].split(',')

  array = array1 += array2
  array.map! {|char| char.to_i }

  dupes = array.find_all { |e| array.count(e) > 1 }
  dupes = dupes.uniq

  i = 0
  while i < dupes.length - 1
    print dupes[i].to_s + ","
    i += 1
  end

  print dupes[i].to_s
  puts
end