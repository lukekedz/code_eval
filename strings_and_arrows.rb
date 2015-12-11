File.open(ARGV[0]).each_line do |line|

  line = line.gsub("\n","")
  array = line.split('')

  arrows = 0
  i = 0
  while i < array.length

    if array[i] == "<"
      if array[i + 1] == "-"
        if array[i + 2] == "-"
          if array[i + 3] == array[i]
            if array[i + 4] == array[i]
              arrows +=1
            end
          end
        end
      end
    end

    if array[i] == ">"
      if array[i + 1] == array[i]
        if array[i + 2] == "-"
          if array[i + 3] == "-"
            if array[i + 4] == array[i]
              arrows +=1
            end
          end
        end
      end
    end

    i += 1
  end

  p arrows
end
