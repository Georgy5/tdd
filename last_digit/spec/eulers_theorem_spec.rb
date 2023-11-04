# frozen_string_literal: true
require_relative "../eulers_theorem"

describe "#last_digit" do
  it "should return the last digit of 0^0" do
    expect(last_digit(0, 0)).to eq(1)
  end

  it "should return the last digit of 0^5" do
    expect(last_digit(0, 5)).to eq(0)
  end

  context "last digits that always equal a" do
    it "should return the last digit" do
      expect(last_digit(1, 5)).to eq(1)
    end

    it "should return the last digit" do
      expect(last_digit(5, 5)).to eq(5)
    end

    it "should return the last digit" do
      expect(last_digit(6, 5)).to eq(6)
    end
  end

  context "last digits that don't always equal a" do
    it "should return the last digit of a number" do
      expect(last_digit(4, 1)).to eq(4)
    end

    it "should return the last digit of a number" do
      expect(last_digit(4, 2)).to eq(6)
    end
  end

  context "large numbers"do
    it "should return the last digit of a large number" do
      expect(last_digit(10, 10**10)).to eq(0)
    end

    it "should return the last digit of a large number" do
      expect(last_digit(2**200, 2**300)).to eq(6)
    end
  end
end
