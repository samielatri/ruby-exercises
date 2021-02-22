
def ProductDigits(num)

  if (num < 10)
    return 2 
  end
  
  possible = []
  
  for i in 1..num
    j = num
    while j > 0
      if i * j == num
        possible << (i.to_s + j.to_s)
      end
      j -= 1
    end
  end
  
  min = possible[0].length
  for i in 1...possible.length
    if min > possible[i].length
      min = possible[i].length
    end
  end

  return min
end

puts ProductDigits(STDIN.gets)