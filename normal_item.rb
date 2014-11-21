require './item.rb'

class NormalItem < Item

  def initialize (name, sell_in, quality)
    super(name, sell_in, quality)
  end

  def dayPass
    if self.sell_in==0
      self.quality-=2
    else
      self.sell_in-=1
      self.quality-=1
    end
  end
end