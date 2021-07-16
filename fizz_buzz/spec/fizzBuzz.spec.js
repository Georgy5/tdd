const { expect } = require('chai');
const FizzBuzz = require('../src/fizzBuzz');

describe('FizzBuzz ganme', () => {
  let game;

  before(() => {
    game = new FizzBuzz();
  })
  
  it('is expected to return 1 if given 1', () => {
    expect(game.play(1)).to.eql(1)
  })
});