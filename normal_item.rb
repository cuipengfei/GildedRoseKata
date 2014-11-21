require './item.rb'

class NormalItem < Item

  def initialize (name, sell_in, quality)
    super(name, sell_in, quality)
    @changeRate = 1
  end

  def dayPass
    changeDate
    changeQuality
  end

  private

  def changeQuality
    if self.quality > @changeRate
      self.quality-=@changeRate
    else
      self.quality=0
    end
  end

  def changeDate
    if self.sell_in>0
      self.sell_in-=1
    else
      @changeRate=2
    end
  end

end