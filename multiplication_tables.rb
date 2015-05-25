for i in 1..12

  mlt = 1

  while mlt <= 12

    sp = (i * mlt).to_s.length

    if mlt == 1

      until sp == 2
        print " "
        sp += 1
      end

      print i
    else

      until sp == 4
        print " "
        sp += 1
      end

      print i * mlt

    end

    mlt += 1
  end

  puts
end