require_relative '../token_verifier'

describe TokenVerifier do
  it 'is expected that "-" removed, "/" replaces "!" and "+" replaces "$"' do
    expect(subject.transform("Karl-G30r-GKel-ler!-$em!")).to eq("KarlG30rGKeller/+em/")
  end

  it 'is expected that the 15 bytes combined with XOR will yield 0' do
    expect(subject.plausible?("QUBs-WTOX-hEmh-6fY2-FGSl")).to eq(true)
  end
end
