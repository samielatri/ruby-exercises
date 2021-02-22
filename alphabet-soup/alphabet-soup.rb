def AlphabetSoup(str)
   temp = ""
   i = 0
   j = 0
   n = str.length
   for i in 0...n-1
    for j in i+1...n
      if str[i] > str[j]
        temp = str[i]
        str[i] = str[j]
        str[j] = temp
      end
    end
  end
  return str
end

puts AlphabetSoup(STDIN.gets)
