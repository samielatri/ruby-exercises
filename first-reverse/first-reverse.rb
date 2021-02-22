def FirstReverse(str)
  tempStr = ""
  
  for i in 0...str.length do
    tempStr += str[str.length-1-i] 
  end

  str = tempStr

  return str
end

puts FirstReverse(STDIN.gets)