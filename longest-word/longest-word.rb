
def LongestWord(sen)
  max = ""
  word = ""

  for i in 0..sen.length do
    if (sen[i] == " " || i == sen.length)
      if (word.length > max.length)
        max = word
      end    
      word = ""
    else
      if ('A'..'Z').include?(sen[i].upcase) || ('0'..'9').include?(sen[i])
        word += sen[i]
      end
    end
  end
  
  return max
end

puts LongestWord(STDIN.gets)