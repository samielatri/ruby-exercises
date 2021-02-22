def permute(arr, i, j)
  tmp = arr[i]
  arr[i] = arr[j]
  arr[j] = tmp
  return arr
end

def sortArray(arr)
  arrLength = arr.length

  if arrLength < 2
    return arr 
  end

  swapped = true
  while swapped
    swapped = false
    for i in 0...arrLength-1
      if arr[i] > arr[i+1]
        arr = permute(arr, i, i+1)
        swapped = true
      end
    end
  end

  return arr
end

def Median(arr)
  sortedArr = sortArray(arr)
  
  unless arr.length % 2 == 0
    median = sortedArr[(arr.length - 1) / 2]
  else 
    median = (sortedArr[arr.length / 2 - 1] + sortedArr[arr.length / 2]) / 2 
  end

  return median
end 

def MovingMedian(arr)
    n = arr[0]
    list = arr[1..-1]
    res = []
    for i in 0...list.length
      ini_i = i - (n - 1)
      if ini_i <= 0 
        res << Median(list[0..i])
      else
        res << Median(list[ini_i..i])
      end 
    end 
    return res.join(',')
end 

        
# keep this function call here    
puts MovingMedian(STDIN.gets)
