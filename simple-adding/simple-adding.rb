def SimpleAdding(num)
  if num == 0
    return 0
  else
    return num + SimpleAdding(num - 1)
  end
end

puts SimpleAdding(STDIN.gets)