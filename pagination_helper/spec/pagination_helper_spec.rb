require_relative "../pagination_helper"

describe PaginationHelper do

  before do
    @helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
  end

  describe "#item_count" do
    it "should return a item count of 6" do
      expect(@helper.item_count()).to eq 6
    end
  end

  describe "#page_count" do
    it "should return a page count of 2" do
      expect(@helper.page_count()).to eq 2
    end
  end

  describe "#page_item_count" do
    it "should return a page item count of 2" do
      expect(@helper.page_item_count(1)).to eq 2
    end
  end

  describe "#page_item_count" do
    it "should return -1" do
      expect(@helper.page_item_count(2)).to eq -1
    end
  end

  describe "#page_index" do
    it "should return the page 1 (index)" do
      expect(@helper.page_index(5)).to eq 1
    end
  end

  describe "#page_index" do
    it "should return -1" do
      expect(@helper.page_index(20)).to eq -1
    end
  end

  describe "#page_index" do
    it "should return -1" do
      expect(@helper.page_index(-10)).to eq -1
    end
  end
end
