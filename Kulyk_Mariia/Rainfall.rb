def extract_numbers(town, data_strng)
  town_data = data_strng.split("\n") #conver data to array data
  record = town_data.select { |line| line.split(":").shift == town }.join #chose town's names from lines with data
  return -1 if record == '' # if town is not defined, show -1
  yield record.scan(/\d+\.\d+/).map { |element| element.to_f } #convert digits to float
end

def mean(town, data_strng) # should return the average of rainfall for the city
  extract_numbers(town, data_strng) do |record|
    record.reduce(:+)/record.size
  end
end

def variance(town, data_strng) #should return the variance of rainfall for the city
  extract_numbers(town, data_strng) do |record|
    mean = mean(town, data_strng)
    record.map { |rainfall| (rainfall - mean)**2 }.reduce(:+)/record.size
  end
end
