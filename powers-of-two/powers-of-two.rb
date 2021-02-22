def PowersofTwo(num)
  if num == 1
    return true
  elsif num % 2 == 0
    return PowersofTwo(num / 2)
  end 
  return false
end

puts PowersofTwo(STDIN.gets)
