def find_min_in_nested_arrays(src)
outer_results = []
row_index = 0
while row_index < src.count do
  element_index = 0
  longest_string_element = 100
  while element_index < src[row_index].count do
 
    # Array at row_index
    # Element of the inner array at element_index
    # If the length of the current element is greater than the length of longest_string_element
    # Set longest_string_element to the current element
    if src[row_index][element_index] < longest_string_element
      longest_string_element = src[row_index][element_index]
    end
    element_index += 1
  end
 
  # We have to check every element in each inner array, so after the loop finishes
  # The current value of longest_string_element is pushed into outer_results
  outer_results << longest_string_element
  row_index += 1
end
 
outer_results
end