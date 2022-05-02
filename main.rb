def substring(string, array)
  result_arr = []
  string.split.each do |str|
    result_arr << array.find_all { |word| str.downcase.include?(word.downcase) }
  end
  result_arr.flatten!.reduce(Hash.new(0)) do |result, item| #add each new item to a hash with a default value of 0 incremented by 1 each time the same item is added
    result[item] += 1
    result
  end
end