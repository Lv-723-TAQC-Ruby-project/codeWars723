def to_dict_load(data)
    all_towns = data.split("\n")
    town_wise = {}
    all_towns.each {
        |x| town_name, values = x.split(":")
        values = values.split(",")
        vals = []
        values.each {
            |x| 
            val = x.split(" ")[1]
            vals << val.to_f
        }
        mean = vals.sum/vals.size
        variance_array = []
        for record in vals
            variance_array << ((mean - record.to_f)**2)
        end
        variance = variance_array.sum/variance_array.size
        town_wise[town_name] = {'mean'=> mean, 'variance'=> variance}
    }
    town_wise
end

def mean(town, data)
    dt = to_dict_load(data)
    if dt.include? town
        return dt[town]['mean']
    end
    return -1
end

def variance(town, data)
    dt = to_dict_load(data)
    if dt.include? town
        return dt[town]['variance']
    end
    return -1
end