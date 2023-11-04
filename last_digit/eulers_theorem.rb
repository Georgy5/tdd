CONSTANT_LAST_DIGITS = [1, 5, 6]

def last_digit(a, b)
  return 1 if a.zero? and b.zero?

  return a if CONSTANT_LAST_DIGITS.include?(a)

  # euler's theorem
  b % 4 == 0 ? res = 4 : res = b % 4

  last_digit = a**res % 10
end
