# frozen_string_literal: true

describe "#last_digit" do
  it "should return the last digit of 0^0" do
    expect(last_digit(0, 0)).to eq(1)
  end

  it "should return the last digit of a number" do
    skip
    expect(last_digit(4, 1)).to eq(4)
  end

  it "should return the last digit of a large number" do
    skip
    expect(last_digit(10, 10 ** 10)).to eq(0)
  end
end
