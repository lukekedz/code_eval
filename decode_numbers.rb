File.open(ARGV[0]).each_line do |line|
  input = line.strip

  decodes = 0

  if input.to_i <= 26
    decodes += 1
  end

  input = input.split(//)
  input.map! { |char| char.to_i }

  if ( input.all? {|int| int <= 26 } )
    decodes += 1
  end

  iterate = input.length
  iterate.times do |i|
    if input[i] <= 26

  end

  puts input.inspect
  puts "decodes: " + decodes.to_s
  puts
end