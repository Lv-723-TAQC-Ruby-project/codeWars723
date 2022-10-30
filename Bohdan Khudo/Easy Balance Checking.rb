def balance(b)

  num = b.gsub(/[^0-9 \n.]+/i, '')
  num_arr  = num.gsub(/ /i, '').split(" ").to_a
  original_balance = num_arr[0]

  int = num.gsub(/\d*[.]\d+/i, '')
  int = int.gsub(/ /i, '')
  arr_int = int.split(" ").to_a

  words = b.gsub(/[^a-z \n]+/i, '')
  words_arr = words.gsub(/ /i, '').split(" ").to_a

  float = num.gsub(/^[\d+.\n]+/i, '')
  float = float.gsub(/ /i, '')
  arr_float = float.split(" ").to_a
  j = 0
  while j < arr_float.count
    arr_float[j] = format("%.2f", arr_float[j])
    j += 1
  end



  result_string = "Original Balance: " + format("%.2f", original_balance) + "\r\n"
  current_balance = original_balance.to_f
  sum = 0
  i = 0
  while i < arr_int.count
    current_balance -= arr_float[i].to_f
    sum += arr_float[i].to_f
    result_string += "#{arr_int[i]} #{words_arr[i]} #{arr_float[i]} Balance " + format("%.2f", current_balance) + "\r\n"
    i += 1
  end
  result_string += "Total expense  " + format("%.2f", sum) + "\r\nAverage expense  " + format("%.2f", sum/arr_float.count)

  result_string
end

s = "1233.00
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
puts balance(s)