def bubble_sort(array)
  
  #define the size of our array(length) and check first edge case: we receive one or 0 element arr
  array_length = array.size
  return array if array_length <= 1

  loop do 
  # Create a variable swapped to let the program know when to exit the loop

  swapped = false

  (array_length-1).times do |index|
    if array[index] > array[index + 1]
      # perfom a swap
      array[index], array[index + 1] = array[index + 1], array[index]
      swapped = true 
    end
    end
    break if not swapped
  end

  array
end

unsorted_array = [4,3,78,2,0,2]

p bubble_sort(unsorted_array)