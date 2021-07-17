class FizzBuzz {
  play(number) {
    if (number % 3 === 0) {
      return "fizz"
    } else {
      return number
    }
  }
}

module.exports = FizzBuzz