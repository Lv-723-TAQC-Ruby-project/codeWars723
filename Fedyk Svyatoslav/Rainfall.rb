def split_num(town,strng)
    towns = ["Rome", "London", "Paris", "NY", "Vancouver", "Sydney", "Bangkok", "Tokyo",
            "Beijing", "Lima", "Montevideo", "Caracas", "Madrid", "Berlin"]
    return [] if !strng.include? town
    return [] if !towns.include? town
    
    strArr = strng.split("\n")
    num_arr = []
    
    for str in strArr
      if str.include? town
        num_arr = str.split(",")
        num_arr.map{ |num| num.gsub!(/[^0-9.]/, '') }
        puts str
      end
    end
    return num_arr
end
  
def mean(town, strng)
    num_arr = split_num(town,strng)
    return -1 if num_arr.size == 0
    return num_arr.map(&:to_f).sum/num_arr.size
end
  
def variance(town, strng)
    num_arr = split_num(town,strng)
    return -1 if num_arr.size == 0
    mean = num_arr.map(&:to_f).sum/num_arr.size
    sum = num_arr.sum(0.0) { |element| (element.to_f - mean) ** 2 }
    return sum / num_arr.size
end