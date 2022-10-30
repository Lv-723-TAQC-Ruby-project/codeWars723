def square_or_square_root(arr)
    for a in 0..arr.length()-1      
      rr = Math.sqrt(arr[a]).to_i
      if arr[a]==rr**2
        arr[a]= Math.sqrt(arr[a]).to_i
      else
        arr[a]=arr[a]**2
      end      
    end
    return arr
end
