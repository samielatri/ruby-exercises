def TimeConvert(num) 
  return (num / 60).to_s + ":" + (num % 60).to_s
end

puts TimeConvert(STDIN.gets)
