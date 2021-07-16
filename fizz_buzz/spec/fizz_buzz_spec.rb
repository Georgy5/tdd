require_relative '../src/fizz_buzz'

describe FizzBuzz do
  # let(:game) { FizzBuzz.new }

  before do
    @game = FizzBuzz.new
  end

  it 'is expected to return 1 if given 1' do
    expect(@game.play(1)).to eq 1
  end
end