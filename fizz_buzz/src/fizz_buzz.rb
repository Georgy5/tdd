class FizzBuzz
  def play(number)
    (text = "#{['fizz'][number % 3]}#{['buzz'][number % 5]}").empty? ? 
      number : text
  end
end
