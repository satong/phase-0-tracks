# Release 0: implement simple search
def search_array(arr, element)
  counter = 0
  arr.each do |el|
    if el == element
      return counter
    else
      counter += 1
    end
  end
  return nil if counter == arr.length
end

# arr = [42, 89, 23, 1]
# search_array(arr, 24)

# Release 1: calculate fibonacci numbers
def fib(num)
  # Assume sequence always starts with 0 and 1
  sequence = [0,1]
  if num > 1
    until sequence.length == num
      # Add in next number
      next_number = sequence[-1]+sequence[-2]
      # Insert number into sequence
      sequence << next_number
    end
    sequence
  else
    p "Please enter a number greater than 1"
  end
end

# Release 2: sort an array
def bubble_sort(array)
  n = array.length
  # set "swapped" to be true so that method calls while loop. this is a variable that helps us track if numbers are being swapped, so that the function will end when numbers are all in order and no more swapping is needed
  swapped = true
  while swapped
    swapped = false
    # for each element of the array, check if the following element is larger. if not, then swap the two elements and then move on to the next set of elements
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        # if swap is needed, set swapped variable to be true
        swapped = true
      end
    end
  end
  array
end
