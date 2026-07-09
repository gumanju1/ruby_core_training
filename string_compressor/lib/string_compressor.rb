def string_compressor(str)
  return str if str.empty?

  compressed = ""
  count = 1

  (1...str.length).each do |i|
    if str[i] == str[i - 1]
      count += 1
    else
      compressed += str[i - 1] + count.to_s
      count = 1
    end
  end

  compressed += str[-1] + count.to_s

  # Return the shorter string
  compressed.length < str.length ? compressed : str
end