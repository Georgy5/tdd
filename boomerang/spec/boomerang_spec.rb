require_relative '../boomerang'

describe Boomerang do
  it 'is expected to return 1_found message if given 323' do
    expect(subject.find([3, 2, 3])).to eq (
      "1 Boomerang found: [[3, 2, 3]]"
    )
  end

  it 'is expected to return none_found message if given 22' do
    expect(subject.find([2, 2])).to eq (
      "This list does not contain any Boomerangs"
    )
  end

  it 'is expected to return 2_found message if given 1212' do
    expect(subject.find([1, 2, 1, 2])).to eq (
      "2 Boomerangs found: [[1, 2, 1], [2, 1, 2]]"
    )
  end

  it 'is expected to return 3_found message if given 121234565' do
    expect(subject.find([1, 2, 1, 2, 3, 4, 5, 6, 5])).to eq (
      "3 Boomerangs found: [[1, 2, 1], [2, 1, 2], [5, 6, 5]]"
    )
  end

  it 'is expected to return none_found message if given an empty array' do
    expect(subject.find([])).to eq (
      "This list does not contain any Boomerangs"
    )
  end

  it 'is expected to return none_found message if given 55555' do
    expect(subject.find([5, 5, 5, 5, 5])).to eq (
      "This list does not contain any Boomerangs"
    )
  end
end
