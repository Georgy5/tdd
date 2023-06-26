# TODO: complete this class

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end
  
  # returns the number of items within the entire collection
  def item_count
    @collection.size
  end
	
  # returns the number of pages
  def page_count
    minimum = item_count / @items_per_page
    page_count = minimum + 1 if remainder.nonzero?
  end

  def remainder
    remainder = item_count % @items_per_page
  end

  def make_pages
    pages = []
    return pages if page_count.nil? || page_count.zero?
    pages = @collection.each_slice(@items_per_page).to_a
  end

  def guard_clause(index)
    return -1 if page_count.nil?
    if index >= page_count || index < 0
      return -1
    end
  end
	
  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    guard_clause(page_index)
    pages = make_pages
    pages[page_index].nil? ? -1 : pages[page_index].size
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    guard_clause(item_index)
    if item_index < item_count and item_index >= 0
      item_index / @items_per_page
    else
      return -1
    end
  end
end
