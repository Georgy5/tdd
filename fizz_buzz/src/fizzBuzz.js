class FizzBuzz {
  play(number) {
    return (number % 3 ? '' : 'fizz') +
    (number % 5 ? '' : 'buzz') || number
  }
}

module.exports = FizzBuzz