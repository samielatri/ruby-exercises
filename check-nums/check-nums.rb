def CheckNums(num1,num2)
  if ( num1 == num2 )
    return "-1"
  end

  return (num2 > num1).to_s

end

puts CheckNums(STDIN.gets)