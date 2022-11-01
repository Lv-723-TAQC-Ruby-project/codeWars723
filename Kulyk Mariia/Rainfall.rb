def extract_numbers(town, data_strng)
  town_data = data_strng.split("\n")
  record = town_data.select { |line| line.split(":").shift == town }.join
  return -1 if record == ''
  yield record.scan(/\d+\.\d+/).map(&:to_f)
end

def mean(town, data_strng)
  extract_numbers(town, data_strng) do |record|
    record.reduce(:+)/record.size
  end
end

def variance(town, data_strng)
  extract_numbers(town, data_strng) do |record|
    mean = mean(town, data_strng)
    record.map { |rainfall| (rainfall - mean)**2 }.reduce(:+)/record.size
  end
end
