File.open(ARGV[0]).each_line do |line|
  morse = {
    "A" => ".-",
    "B" => "-...",
    "C" => "-.-.",
    "D" => "-..",
    "E" => ".",
    "F" => "..-.",
    "G" => "--.",
    "H" => "....",
    "I" => "..",
    "J" => ".---",
    "K" => "-.-",
    "L" => ".-..",
    "M" => "--",
    "N" => "-.",
    "O" => "---",
    "P" => ".--.",
    "Q" => "--.-",
    "R" => ".-.",
    "S" => "...",
    "T" => "-",
    "U" => "..-",
    "V" => "...-",
    "W" => ".--",
    "X" => "-..-",
    "Y" => "-.--",
    "Z" => "--..",
    " " => " ",
    "1" => ".----",
    "2" => "..---",
    "3" => "...--",
    "4" => "....-",
    "5" => ".....",
    "6" => "-....",
    "7" => "--...",
    "8" => "---..",
    "9" => "----.",
    "0" => "-----"
  }

  input = line.split("  ")

  coded_array = []
  input.each_with_index do |value, index|
    coded_array.push value.strip
    if (index + 1) != input.length then coded_array.push " " end
  end

  coded_array.each do |elem|
    if elem != " "
      elem.split(" ").each do |string|
        print morse.key(string)
      end
    else
      print elem
    end
  end

  puts
end