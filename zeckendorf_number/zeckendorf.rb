class ZeckendorfTranslator
  # List the first six distinct Fibonacci numbers
  SIX_FIBS = [1, 2, 3, 5, 8, 13].freeze

  def translate(decimal)
    return 0 if decimal.zero?

    zeckendorf_number = 0
    SIX_FIBS.reverse.each_with_index do |fib, index|
      if decimal >= fib
        zeckendorf_number += 10**(5 - index)
        decimal -= fib
      end
    end
    zeckendorf_number
  end
end
