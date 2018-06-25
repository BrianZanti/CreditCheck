card_number = "5541801923795240"

double_every_other = []
card_number.split("").reverse.each.with_index do |number, index|
  if(index.odd?)
    double_every_other << number.to_i * 2
  else
    double_every_other << number.to_i
  end
end

summed_over_ten = double_every_other.map do |digit|
  if(digit >= 10)
    digit - 9
  else
    digit
  end
end

sum = 0
summed_over_ten.each do |num|
  sum += num
end

if sum % 10 == 0
  puts "The number is valid"
else
  puts "The number is invalid"
end
