require_relative '../token_verifier'

describe TokenVerifier do
  it 'is expected that "-" removed, "/" replaces "!" and "+" replaces "$"' do
    expect(subject.transform("Karl-G30r-GKel-ler!-$em!")).to eq("KarlG30rGKeller/+em/")
  end

  it 'is expected that the 15 bytes combined with XOR will yield 0' do
    expect(subject.plausible?("QUBs-WTOX-hEmh-6fY2-FGSl")).to eq(true)
  end

  it 'is expected that the 15 bytes combined with XOR will yield 0' do
    expect(subject.plausible?("YuL7-jIC6-lkKQ-MjEZ-4SNR")).to eq(true)
  end

  it 'is expected that the 15 bytes combined with XOR will yield 0' do
    expect(subject.plausible?("yJqE-Yols-g0O0-kdq0-FLp0")).to eq(true)
  end

  it 'is expected that the 15 bytes combined with XOR will yield 0' do
    expect(subject.plausible?("6!hV-4Psa-nECv-4f0R-nNF0")).to eq(true)
  end
end
