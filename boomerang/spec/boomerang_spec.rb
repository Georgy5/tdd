require_relative '../boomerang'

describe Boomerang do
  it 'is expected to return 1 if given 323' do
    expect(subject.count([3, 2, 3])).to eq (1)
  end
end
