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

    for i in 0..(@items.size-1)
      if (@items[i].name != "Aged Brie" && @items[i].name != "Backstage passes to a TAFKAL80ETC concert")
        if (@items[i].quality > 0)
          if (@items[i].name != "Sulfuras, Hand of Ragnaros")
            @items[i].quality = @items[i].quality - 1
          end
        end
      else
        if (@items[i].quality < 50)
          @items[i].quality = @items[i].quality + 1
          if (@items[i].name == "Backstage passes to a TAFKAL80ETC concert")
            if (@items[i].sell_in < 11)
              if (@items[i].quality < 50)
                @items[i].quality = @items[i].quality + 1
              end
            end
            if (@items[i].sell_in < 6)
              if (@items[i].quality < 50)
                @items[i].quality = @items[i].quality + 1
              end
            end
          end
        end
      end
      if (@items[i].name != "Sulfuras, Hand of Ragnaros")
        @items[i].sell_in = @items[i].sell_in - 1;
      end
      if (@items[i].sell_in < 0)
        if (@items[i].name != "Aged Brie")
          if (@items[i].name != "Backstage passes to a TAFKAL80ETC concert")
            if (@items[i].quality > 0)
              if (@items[i].name != "Sulfuras, Hand of Ragnaros")
                @items[i].quality = @items[i].quality - 1
              end
            end
          else
            @items[i].quality = @items[i].quality - @items[i].quality
          end
        else
          if (@items[i].quality < 50)
            @items[i].quality = @items[i].quality + 1
          end
        end
      end
    end
  end

end