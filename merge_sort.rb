def merge_sort(array)
  return array if array.length <= 1
  m = array.length / 2
  left_half = array[0, m]
  right_half = array[m, m.ceil]
  merge(merge_sort(left_half), merge_sort(right_half))
end

def merge(arr1, arr2)
  result = []
  until arr1.empty? || arr2.empty?
    if arr1[0] < arr2[0]
      result.push(arr1.shift)
    else
      result.push(arr2.shift)
    end
  end

  result.push(*arr1) unless arr1.empty?
  result.push(*arr2) unless arr2.empty?

  result
end

arr = [3, 2, 1, 13, 8, 5, 0, 1]
p merge_sort(arr)