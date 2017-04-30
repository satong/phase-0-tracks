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
