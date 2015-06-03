File.open(ARGV[0]).each_line do |hex|
  def convert_base(hex)
    hex.to_i(16).to_s(10).to_i
  end

  p convert_base(hex)
end