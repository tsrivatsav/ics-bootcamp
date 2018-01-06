def newRoman integer
s = ''
  while integer > 0
    if integer >= 1000
      s += 'M'
      integer -= 1000
    elsif integer >= 500
      if integer >= 900
        s += 'IM'
        integer -= 900
      else
        s += 'D'
        integer -= 500
      end
    elsif integer >= 100
      if integer >= 400
        s += 'ID'
        integer -= 400
      else
        s += 'C'
        integer -= 100
      end
    elsif integer >= 50
      if integer >= 90
        s += 'IC'
        integer -= 90
      else
        s += 'L'
        integer -= 50
      end
    elsif integer >= 10
      if integer >= 40
        s += 'IL'
        integer -= 40
      else
        s += 'X'
        integer -= 10
      end
    elsif integer >= 5
      if integer == 9
        s += 'IX'
        integer -= 9
      else
        s += 'V'
        integer -= 5
      end
    else
      if integer == 4
        s += 'IV'
        integer -= 4
      else
        s += 'I'
        integer -= 1
      end
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
puts newRoman number
