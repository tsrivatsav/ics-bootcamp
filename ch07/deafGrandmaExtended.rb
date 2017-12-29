byeCounter = 0
statement = gets.chomp
statementShout = statement.upcase
if statement == 'BYE'
  byeCounter += 1
end
while byeCounter < 3
  if statement != 'BYE'
    byeCounter = 0
    if statement != statementShout
      puts 'HUH?! SPEAK UP, SONNY!'
    else
      puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
    end
  else
      puts 'HUH?! SPEAK UP, SONNY!'
  end
  statement = gets.chomp
  statementShout = statement.upcase
  if statement == 'BYE'
    byeCounter += 1
  end
end
puts 'GOODBYE SONNY!'
