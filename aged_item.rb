require './normal_item.rb'

class AgedItem < NormalItem

  def initialize (name, sell_in, quality)
    super(name, sell_in, quality)
  end

  protected

  def changeQuality
    if self.quality < 50
      self.quality+=1
    end
  end

end