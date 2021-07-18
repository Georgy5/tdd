require_relative '../src/fizz_buzz'

describe FizzBuzz do
  describe "#play" do
    it 'is expected to return 1 if given 1' do
      expect(subject.play(1)).to eq 1
    end

    it 'is expected to return 2 if given 2' do
      expect(subject.play(2)).to eq 2
    end

    it 'is expected to return "fizz" if given 9' do
      expect(subject.play(9)).to eq 'fizz'
    end

    it 'is expected to return "buzz" if given 10' do
      expect(subject.play(10)).to eq 'buzz'
    end

    it 'is expected to return "fizzbuzz" if given 15' do
      expect(subject.play(15)).to eq 'fizzbuzz'
    end
  end
end
