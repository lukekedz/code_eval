File.open(ARGV[0]).each_line do |unf_coords|

  unf_coords = unf_coords.split('')
  coords = []

  i = 0
  while i < unf_coords.length
    if /\d/.match(unf_coords[i])
      if /\d/.match(unf_coords[i + 1])
        coords.push(unf_coords[i] + unf_coords[i + 1])
        i += 1
      else
        coords.push(unf_coords[i])
      end
    end

    i += 1
  end

  coords.map! { |c| c.to_i }

  xd = coords[2] - coords[0]
  yd = coords[3] - coords[1]

  distance = Math.sqrt( xd * xd + yd * yd)
  p distance

end