File.open(ARGV[0]).each_line do |scores|
  scores = scores.split(" ")
  rows = Array.new.push(Array.new)

  i = 0
  j = 0
  while i < scores.length

    if scores[i] == "|"
      rows.push(Array.new)
      j += 1
    else
      rows[j].push(scores[i].to_i)
    end

    i += 1
  end

  columns = rows.transpose

  i = 0
  while i < columns.length
    highest = columns[i][0]

    j = 0
    loop do
      if j == columns[i].length
        print highest.to_s + " "
        break
      else
        if columns[i][j] > highest then highest = columns[i][j] end
        j += 1
      end
    end

    i += 1
  end

  puts
end