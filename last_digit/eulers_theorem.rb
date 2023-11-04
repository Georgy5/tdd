CONSTANT_LAST_DIGITS = [1, 5, 6].freeze

def last_digit(a, b)
  return 1 if a.zero? && b.zero?
  return 1 if b.zero?
  return 0 if a.zero?
  return a if CONSTANT_LAST_DIGITS.include?(a)

  # euler's theorem
  res = (b % 4).zero? ? 4 : b % 4

  last_digit = a**res % 10
end
