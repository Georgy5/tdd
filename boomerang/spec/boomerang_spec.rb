require_relative '../boomerang'

describe Boomerang do
  it 'is expected to return 1 if given 323' do
    expect(subject.count([3, 2, 3])).to eq (1)
  end

  it 'is expected to return 0 if given 22' do
    expect(subject.count([2, 2])).to eq (0)
  end
end
