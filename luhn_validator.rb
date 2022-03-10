# frozen_string_literal: true

# Verifying credit card check digit
module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)
    transform_number = nums_a.reverse!.map.with_index { |num, index| index.even? ? num : (num * 2).digits.sum }
    (transform_number.reduce(:+) % 10).zero?

    # TODO: use the integers in nums_a to validate its last check digit
  end
end
