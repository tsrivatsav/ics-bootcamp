statement = gets.chomp
statementShout = statement.upcase
while statement != 'BYE'
  if statement != statementShout
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
  end
  statement = gets.chomp
  statementShout = statement.upcase
end
puts 'GOODBYE SONNY!'
