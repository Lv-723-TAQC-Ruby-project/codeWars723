def new_avg(arr, newavg)
  if (arr == []) then i = 0  else i = arr.inject{ |sum,x| sum + x }
  end
  res = (arr.length + 1) * newavg - i
    
if (res > 0) then
return res.ceil
  end
  raise ValueError
end