require('time')

File.open(ARGV[0]).each_line do |times|
  times = times.split(" ")

  times.map! { |time| Time.at(Time.parse(time).to_i).strftime("%H:%M:%S") }
  times = times.sort.reverse

  times.each { |time| print time + " " }
  puts
end