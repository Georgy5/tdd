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
end
