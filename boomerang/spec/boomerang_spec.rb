require_relative '../boomerang'

describe Boomerang do
  it 'is expected to return output RSpec' do
    expect(Boomerang.run).to eq ("RSpec")
  end
end