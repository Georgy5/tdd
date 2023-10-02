require_relative '../zeckendorf'

describe ZeckendorfTranslator do
  it 'is expected to return a Zeckendorf number of 0 if given the decimal 0' do
    expect(subject.translate(0)).to eq(0)
  end

  it 'is expected to return a Zeckendorf number of 1 if given the decimal 1' do
    expect(subject.translate(1)).to eq(1)
  end

  it 'is expected to return a Zeckendorf number of 2 if given the decimal 10' do
    expect(subject.translate(2)).to eq(10)
  end

  it 'is expected to return a Zeckendorf number of 3 if given the decimal 100' do
    expect(subject.translate(3)).to eq(100)
  end

  it 'is expected to return a Zeckendorf number of 4 if given the decimal 101' do
    expect(subject.translate(4)).to eq(101)
  end

  it 'is expected to return a Zeckendorf number of 5 if given the decimal 1000' do
    expect(subject.translate(5)).to eq(1000)
  end

  it 'is expected to return a Zeckendorf number of 6 if given the decimal 1001' do
    expect(subject.translate(6)).to eq(1001)
  end

  it 'is expected to return a Zeckendorf number of 7 if given the decimal 1010' do
    expect(subject.translate(7)).to eq(1010)
  end

  it 'is expected to return a Zeckendorf number of 8 if given the decimal 10000' do
    expect(subject.translate(8)).to eq(10000)
  end

  it 'is expected to return a Zeckendorf number of 9 if given the decimal 10001' do
    expect(subject.translate(9)).to eq(10001)
  end

  it 'is expected to return a Zeckendorf number of 10 if given the decimal 10010' do
    expect(subject.translate(10)).to eq(10010)
  end

  it 'is expected to return a Zeckendorf number of 11 if given the decimal 10100' do
    expect(subject.translate(11)).to eq(10100)
  end

  it 'is expected to return a Zeckendorf number of 12 if given the decimal 10101' do
    expect(subject.translate(12)).to eq(10101)
  end

  it 'is expected to return a Zeckendorf number of 13 if given the decimal 100000' do
    expect(subject.translate(13)).to eq(100000)
  end

  it 'is expected to return a Zeckendorf number of 14 if given the decimal 100001' do
    expect(subject.translate(14)).to eq(100001)
  end

  it 'is expected to return a Zeckendorf number of 15 if given the decimal 100010' do
    expect(subject.translate(15)).to eq(100010)
  end

  it 'is expected to return a Zeckendorf number of 16 if given the decimal 100100' do
    expect(subject.translate(16)).to eq(100100)
  end

  it 'is expected to return a Zeckendorf number of 17 if given the decimal 100101' do
    expect(subject.translate(17)).to eq(100101)
  end

  it 'is expected to return a Zeckendorf number of 18 if given the decimal 101000' do
    expect(subject.translate(18)).to eq(101000)
  end

  it 'is expected to return a Zeckendorf number of 19 if given the decimal 101001' do
    expect(subject.translate(19)).to eq(101001)
  end

  it 'is expected to return a Zeckendorf number of 20 if given the decimal 101010' do
    expect(subject.translate(20)).to eq(101010)
  end
end
