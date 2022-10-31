def balance(b)
    sym = "&@,;$#€!=:;-_+^/(){}?*'%"
    new_b = b.dup
    
    #clean text
    new_b.gsub!(/[^0-9A-Za-z.\r\n]/, ' ')
    arr = new_b.split("\n")
    arr = arr.reject { |elem| elem.empty? }
    
    full_balance = arr[0].to_f
    balance = arr[0].to_f
    
    arr[0] = "Original Balance: %0.2f" % [arr[0].to_f]
    
    for k in 1..(arr.length()-1)
       n = arr[k].split(" ")
       balance -= n[2].to_f 
       arr[k] = "%s %s %0.2f Balance %0.2f" % [n[0],n[1],n[2].to_f,balance]
    end
  
    arr.append("Total expense  %0.2f" % [full_balance-balance])
    arr.append("Average expense  %0.2f" % [(full_balance-balance)/(arr.length()-2)])  
    
    #concate all strings
    new_b = arr.join("\r\n")
    
    return new_b
end