require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test
  def test_it_exists
    credit_check = CreditCheck.new
    assert_instance_of CreditCheck, credit_check
  end

  def test_validate_number
    credit_check = CreditCheck.new
    assert_equal true, credit_check.valid_number?(5541808923795240)
    assert_equal false, credit_check.valid_number?(5541801923795240)
  end

  def test_validation_output
    credit_check = CreditCheck.new
    expected = "The number 5541808923795240 is valid"
    assert_equal expected, credit_check.validation_output(5541808923795240)
    expected = "The number 5541801923795240 is invalid"
    assert_equal expected, credit_check.validation_output(5541801923795240)
  end
end
