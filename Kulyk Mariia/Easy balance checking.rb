input = "1233.00
125 Hardware;! 24.8?;
123 Flowers 93.5
127 Meat 120.90
120 Picture 34.00
124 Gasoline 11.00
123 Photos;! 71.4?;
122 Picture 93.5
132 Tyres;! 19.00,?;
129 Stamps 13.6
129 Fruits{} 17.6
129 Market;! 128.00?;
121 Gasoline;! 13.6?;"

def balance(b)
  lines = b.split /\n/
  init = balance = b.lines[0].to_f
  res = ["Original Balance: #{'%.2f' % balance}"]
  items = 0

  lines[1..-1].each do |ln|
    next if ln.empty?
    items += 1
    entries = ln.match /(\d+)(.+?)\s*(\d+\.\d+)/
    balance -= entries[3].to_f
    res  << "#{entries[1]} #{entries[2].scan(/\w+/).first} #{'%.2f' % entries[3].to_f} Balance #{'%.2f' % balance}"
  end

  res << "Total expense  #{'%.2f' % (init - balance)}"
  res << "Average expense  #{'%.2f' % (init - balance).fdiv(items)}"
  res.join("\r\n")
end


#puts balance(input)