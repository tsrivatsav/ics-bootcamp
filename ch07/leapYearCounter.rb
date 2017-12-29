puts "Starting Year: "
startingYear = gets.chomp
puts "Ending Year: "
endingYear = gets.chomp
puts "The leap years between these two years are: "
n = startingYear.to_i
i = endingYear.to_i
while n <= i
  if (n%400 == 0 or (n%100 != 0 and n%4 == 0))
    puts n.to_s
  end
  n += 1
end
