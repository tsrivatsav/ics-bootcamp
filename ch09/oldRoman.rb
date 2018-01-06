def oldRoman integer
s = ''
  while integer > 0
    if integer >= 1000
      s += 'M'
      integer -= 1000
    elsif integer >= 500
      s += 'D'
      integer -= 500
    elsif integer >= 100
      s += 'C'
      integer -= 100
    elsif integer >= 50
      s += 'L'
      integer -= 50
    elsif integer >= 10
      s += 'X'
      integer -= 10
    elsif integer >= 5
      s += 'V'
      integer -= 5
    else
      s += 'I'
      integer -= 1
    end
  end
return s
end

puts 'Give me a number between 1 and 3000.'
number = gets.chomp.to_i
while (number < 1 || number > 3000)
  puts 'Out of Range. Please enter a number between 1 and 3000.'
  number = gets.chomp.to_i
end
puts oldRoman number
