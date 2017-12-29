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
i = 0
arrayB = []
while i < arrayA.length
  arrayB[i] = arrayA[i].downcase
  i += 1
end
puts arrayB.sort.join(', ')
