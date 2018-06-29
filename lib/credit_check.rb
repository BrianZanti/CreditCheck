class CreditCheck
  def valid_number?(card_number)
    doubled = double_every_other(card_number)
    summed_over_ten = sum_over_ten(doubled)
    sum = summed_over_ten.sum
    if sum % 10 == 0
      return true
    else
      return false
    end
  end

  def validation_output(card_number)
    if valid_number? card_number
      return "The number #{card_number} is valid"
    else
      return "The number #{card_number} is invalid"
    end
  end

  def double_every_other(card_number)
    digits = card_number.to_s.split("").reverse
    doubled_every_other = []
    digits.each.with_index do |number, index|
      if(index.odd?)
        doubled_every_other << number.to_i * 2
      else
        doubled_every_other << number.to_i
      end
    end
    doubled_every_other
  end

  def sum_over_ten(digits)
    summed_over_ten = []
    digits.each do |digit|
      if(digit >= 10)
        summed_over_ten << digit - 9
      else
        summed_over_ten << digit
      end
    end
    summed_over_ten
  end
end
