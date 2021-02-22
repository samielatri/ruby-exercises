def VowelCount(str)
  cpt = 0

  for i in 0...str.length
    if ( ['O', 'I', 'E', 'A', 'U'].include?(str[i].upcase) )
      cpt += 1
    end
  end

  return cpt
end
 
puts VowelCount(STDIN.gets)