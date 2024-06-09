def fibs(number)
  result = [0, 1]
  for i in 2..number-1
    result.push(result[i-1] + result[i-2])
  end
  result
end




p fibs(8)