require_relative '../zeckendorf'

describe ZeckendorfTranslator do
  it 'is expected to return a Zeckendorf number of 0 if given the decimal 0' do
    expect subject.translate(0).to eq 0
  end
end
