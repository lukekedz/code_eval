File.open(ARGV[0]).each_line do |dirty|
  dirty = dirty.split('')
  clean_words = Array.new.push(Array.new)

  i = 0 # characters
  j = 0 # words
  word = false # indicator for start of a word
  while i < dirty.length

    if /[a-z]/i.match(dirty[i])
      word = true
      k = i # inner char

      while word == true

        if /[a-z]/i.match(dirty[k])
          clean_words[j].push(dirty[k])
          k += 1
        else
          word = false
          i = k + 1
          clean_words.push(Array.new)
          j += 1
        end

      end

    else
      i += 1
    end

  end

  i = 0
  while i < clean_words.length
    print clean_words[i].join('').downcase + " " if clean_words[i] != ''
    i += 1
  end

  puts
end