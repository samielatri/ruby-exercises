def SimpleSymbols(str)
  if str.length < 3
    return false
  end
  for i in 0...str.length
    if ( ('A'..'Z').include?(str[i].upcase) )
      if (i-1 > -1 && i+1 < str.length)
        if (str[i-1] != '+' || str[i+1] != '+')
          return false
        end
      end
    end
  end
  return true
end

puts SimpleSymbols(STDIN.gets)