# print a space unless last element
if (index - 1) != output.length then print " " end

# examples of better input splitting
input = line.split(" ").map! { |str| str.to_i }
array = line.split(';')[1].split(',').map(&:strip)


