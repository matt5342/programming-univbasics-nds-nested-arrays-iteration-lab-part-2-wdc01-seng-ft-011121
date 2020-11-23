def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  lows = []
  outer = 0
  while outer < src.count do
    inner = 0
    lowest = 1000
    while inner < src[outer].count do
      if src[outer][inner] < lowest
        lowest = src[outer][inner]
      end
      inner += 1
    end
    lows << lowest
    outer += 1
  end
  lows

end