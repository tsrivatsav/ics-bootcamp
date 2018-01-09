def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  end
  i = 0
  smallest_element = unsorted_array[0]
  while i < unsorted_array.length - 1
    if unsorted_array[i + 1].downcase < smallest_element.downcase
      smallest_element = unsorted_array[i + 1]
    end
    i += 1
  end
  sorted_array.push smallest_element
  unsorted_array.delete smallest_element
  recursive_sort unsorted_array, sorted_array
end

puts 'Give me a list of unsorted words'
arrayA = []
i = 0
element = gets.chomp
arrayA.push element
while arrayA[i].length != 0
  i += 1
  element = gets.chomp
  arrayA.push element
end
arrayA.pop
arrayB = sort arrayA
puts arrayB.join(', ')
