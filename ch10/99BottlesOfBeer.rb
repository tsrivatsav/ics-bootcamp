def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left/1000000000000
  left -= write*1000000000000

  if write > 0
    trillions = english_number write
    num_string += trillions + ' trillion'
    if left > 0
      num_string += ' '
    end
  end

  write = left/1000000000
  left -= write*1000000000

  if write > 0
    billions = english_number write
    num_string += billions + ' billion'
    if left > 0
      num_string += ' '
    end
  end

  write = left/1000000
  left -= write*1000000

  if write > 0
    millions = english_number write
    num_string += millions + ' million'
    if left > 0
      num_string += ' '
    end
  end

  write = left/1000
  left -= write*1000

  if write > 0
    thousands = english_number write
    num_string += thousands + ' thousand'
    if left > 0
      num_string += ' '
    end
  end

  write = left/100
  left -= write*100

  if write > 0
    hundreds = english_number write
    num_string += hundreds + ' hundred'
    if left > 0
      num_string += ' and '
    end
  end

  write = left/10
  left -= write*10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string += teenagers[left - 1]
      left = 0
    else
      num_string += tens_place[write - 1]
    end

    if left > 0
      num_string += '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string += ones_place[write - 1]
  end

  num_string
end

bottlesOfBeer = 9999
initialBOB = bottlesOfBeer
while bottlesOfBeer > 1
  puts english_number(bottlesOfBeer).capitalize + " bottles of beer on the wall, " + english_number(bottlesOfBeer) + " bottles of beer."
  bottlesOfBeer -= 1
  if bottlesOfBeer > 1
    puts "Take one down and pass it around, " + english_number(bottlesOfBeer) + " bottles of beer on the wall."
    puts ""
  else
    puts "Take one down and pass it around, " + english_number(bottlesOfBeer) + " bottle of beer on the wall."
    puts ""
  end
end
puts "One bottle of beer on the wall, one bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts ""
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, " + english_number(initialBOB) + " bottles of beer on the wall."
