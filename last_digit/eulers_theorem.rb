CONSTANT_LAST_DIGITS = [1, 5, 6]

def last_digit(a, b)
  return 1 if a.zero? and b.zero?

  return a if CONSTANT_LAST_DIGITS.include?(a)
end
