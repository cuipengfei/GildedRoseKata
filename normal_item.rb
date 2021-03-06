require './item.rb'

class NormalItem < Item

  attr_accessor :changeRate

  def initialize (name, sell_in, quality)
    super(name, sell_in, quality)
    @changeRate = 1
  end

  def dayPass
    alterChangeRate
    changeDate
    changeQuality
  end

  protected

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
    end
  end

  def alterChangeRate
    if self.sell_in==0
      @changeRate*=2
    end
  end

end