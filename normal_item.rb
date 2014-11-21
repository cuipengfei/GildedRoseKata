require './item.rb'

class NormalItem < Item

  def initialize (name, sell_in, quality)
    super(name, sell_in, quality)
  end

  def dayPass
    self.sell_in-=1
    self.quality-=1
  end
end