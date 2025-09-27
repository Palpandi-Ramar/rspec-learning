# basket.rb
class Basket
  attr_reader :items

  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def total_items
    @items.size
  end

  def dangerous_action
    raise StandardError, "Something went wrong!"
  end
end
