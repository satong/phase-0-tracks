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
