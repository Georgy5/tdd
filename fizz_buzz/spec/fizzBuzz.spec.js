const { expect } = require('chai');
const FizzBuzz = require('../src/fizzBuzz');

describe('FizzBuzz game', () => {
  let game;

  before(() => {
    game = new FizzBuzz();
  })
  
  describe('#play', () => {
    it('is expected to return 1 if given 1', () => {
      expect(game.play(1)).to.eql(1)
    })

    it('is expected to return 2 if given 2', () => {
      expect(game.play(2)).to.eql(2)
    })

    it('is expected to return fizz if given 9', () => {
      expect(game.play(9)).to.eql('fizz')
    })

    it('is expected to return buzz if given 10', () => {
      expect(game.play(10)).to.eql('buzz')
    })

    it('is expected to return fizzbuzz if given 15', () => {
      expect(game.play(15)).to.eql('fizzbuzz')
    })
  })
});