require './item.rb'
require './normal_item.rb'
require './immutable_item.rb'
require './aged_item.rb'
require './fast_item.rb'
require './time_limit_item.rb'

class GildedRose
  attr_accessor :items

  @items = []

  def initialize
    @items = []
    @items << NormalItem.new("+5 Dexterity Vest", 10, 20)
    @items << AgedItem.new("Aged Brie", 2, 0)
    @items << NormalItem.new("Elixir of the Mongoose", 5, 7)
    @items << ImmutableItem.new("Sulfuras, Hand of Ragnaros", 0, 80)
    @items << TimeLimitItem.new("Backstage passes to a TAFKAL80ETC concert", 15, 20, {10 => 2, 5 => 3})
    @items << FastItem.new("Conjured Mana Cake", 3, 6)
  end

  def update_quality
    @items.each { |item| item.dayPass }
  end

end