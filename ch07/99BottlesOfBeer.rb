bottlesOfBeer = 99
while bottlesOfBeer > 1
  puts bottlesOfBeer.to_s + " bottles of beer on the wall, " + bottlesOfBeer.to_s + " bottles of beer."
  bottlesOfBeer -= 1
  if bottlesOfBeer > 1
    puts "Take one down and pass it around, " + bottlesOfBeer.to_s + " bottles of beer on the wall."
    puts ""
  else
    puts "Take one down and pass it around, 1 bottle of beer on the wall."
    puts ""
  end
end
puts "1 bottle of beer on the wall, 1 bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts ""
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
