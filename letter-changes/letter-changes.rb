def LetterChanges(str)

  for i in 0...str.length
    if (str[i] == 'z')
      str[i] = 'a'
    elsif (str[i] == 'Z')
      str[i] = 'A'
    elsif (('A'..'Y').include? str[i].upcase)
      str[i] = (str[i].ord + 1).chr
    end
    if (['A', 'E', 'I', 'O', 'U'].include? str[i].upcase)
      str[i] = str[i].upcase
    end
  end

  return str
end
puts LetterChanges(STDIN.gets)