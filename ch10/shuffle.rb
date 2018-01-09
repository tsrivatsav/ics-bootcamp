def shuffle some_array
  recursive_shuffle some_array, []
end

def recursive_shuffle unshuffled_array, shuffled_array
  if unshuffled_array.length == 0
    return shuffled_array
  end
  i = rand(unshuffled_array.length)
  shuffled_array.push unshuffled_array[i]
  unshuffled_array.delete unshuffled_array[i]
  recursive_shuffle unshuffled_array, shuffled_array
end

puts 'Give me a list of sorted words'
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
arrayB = shuffle arrayA
puts arrayB.join(', ')
