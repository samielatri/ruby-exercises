def OtherProducts(arr)
  newArr = []
  res = ""
  for i in 0...arr.length
    tempArray1 = arr[0...i]
    tempArray2 = arr[i+1...arr.length]
    tempArray = tempArray1 + tempArray2

    p = 1
    tempArray.each do |x|
      p *= x 
    end
    newArr[i] = p
    res += p.to_s
    res += "-" unless i == arr.length-1
  end

  # code goes here
  return res

end

# keep this function call here 
puts OtherProducts(STDIN.gets)