class CreditCheck
  def valid_number?(card_number)

    double_every_other = []
    card_number.to_s.split("").reverse.each.with_index do |number, index|
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
end
