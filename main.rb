def substring(string, array)
  result_arr = []
  strray = string.split
  strray.each do |str|
    result_arr << array.find_all { |word| str.include?(word) }
  end
  result_arr.flatten!.reduce(Hash.new(0)) do |result, item|
    result[item] += 1
    result
  end
end