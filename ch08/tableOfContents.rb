arrayA = [['Numbers', '1'], ['Letters', '72'], ['Variables', '118']]
lineWidth = 50
puts "Table of Contents".center lineWidth
puts
i = 0
while i < arrayA.length
  puts ("Chapter " + (i + 1).to_s + ": " + arrayA[i][0].to_s).ljust(lineWidth/2) + ("page " + arrayA[i][1].to_s).rjust(lineWidth/2)
  i += 1
end
