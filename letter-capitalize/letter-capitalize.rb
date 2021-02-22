def LetterCapitalize(str)

  str.capitalize!

  for i in 0...str.length
    if (str[i] == " " && i+1 < str.length)
      str[i+1] = str[i+1].upcase
    end
  end
  return str

end

puts LetterCapitalize(STDIN.gets)