def fibs(number)
  result = [0, 1]
  for i in 2..number-1
    result.push(result[i-1] + result[i-2])
  end
  result
end

def fibs_rec(number, arr = [0,1])
  return arr if number == arr.length

  index = arr.length
  first = arr[-1]
  second = arr[-2]
  fibs_rec(number, arr.push(first + second))
end



p fibs(8)
p fibs_rec(8)