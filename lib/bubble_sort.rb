array = [10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9]

def bubble_sort(array)
  for i in 0...array.length
    sorted = true

    for k in 0...(array.length - i - 1)
      if array[k] > array[k + 1]
        array[k], array[k + 1] = array[k + 1], array[k]
        sorted = false
      end      
    end

    break if sorted
  end
  return array
end

p bubble_sort(array)