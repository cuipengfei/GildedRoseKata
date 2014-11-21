require './item.rb'

class NormalItem < Item

  def initialize (name, sell_in, quality)
    super(name, sell_in, quality)
    @decreaseBy = 1
  end

  def dayPass
    decreaseDate
    decreaseQuality
  end

  private

  def decreaseQuality
    if self.quality > @decreaseBy
      self.quality-=@decreaseBy
    else
      self.quality=0
    end
  end

  def decreaseDate
    if self.sell_in>0
      self.sell_in-=1
    else
      @decreaseBy=2
    end
  end

end