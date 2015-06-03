File.open(ARGV[0]).each_line do |line|
  array = line.strip.split(//)
  counted_ltr_array = []
  values = {}

  array.each do |char|
    char = char.downcase

    if /[a-zA-Z]/.match(char)
      counted_ltr_array.push(char)
      values[char] ? values[char] += 1 : values[char] = 1
    end
  end

  values = values.sort_by { |k, v| v }.reverse
  hash_vals = Hash.new{ |h,k| h[k] = [] }
  values.each{ |k,v| hash_vals[k] << v }

  sum = 0
  mult = 26
  hash_vals.each do |k, v|
    sum += mult * v[0]
    mult -= 1
  end

  p sum
end