require_relative '../token_validator'

describe TokenValidator do
  it 'is expected that "-" removed, "/" replaces "!" and "+" replaces "$"' do
    expect(subject.transform("Karl-G30r-GKel-ler!-$em!")).to eq("KarlG30rGKeller/+em/")
  end

  pending 'is expected that the 15 bytes combined with XOR will yield 0' do
    expect(subject.plausible?("Karl-G30r-GKel-ler5-KaRl")).to eq(0)
  end
end
