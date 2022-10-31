def new_avg(arr, newavg)
  
    donations = (newavg * (arr.size + 1) - arr.sum).ceil
    raise "Negative donations!" if  donations < 0
    
    return donations 
    
end