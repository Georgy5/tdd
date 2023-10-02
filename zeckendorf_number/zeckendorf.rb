class ZeckendorfTranslator
  # List the first six distinct Fibonacci numbers
  SIX_FIBS = [1, 2, 3, 5, 8, 13].freeze

  def translate(decimal)
    if (decimal == 0)
      return 0
    end

    zec = 0
    SIX_FIBS.reverse.each_with_index do |fib, index|
      if (decimal >= fib)
        zec += 10**(5 - index)
        decimal -= fib
      end
    end
    return zec
  end
end
