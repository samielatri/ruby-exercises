def WordCount(str)
  cpt = 0
  for i in 0..str.length
    if (str[i] == ' ')
      cpt += 1
    end
  end
  return cpt+1
end

puts WordCount(STDIN.gets)