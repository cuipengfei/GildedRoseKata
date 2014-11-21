require './normal_item.rb'

class ImmutableItem < NormalItem
  def initialize (name, sell_in, quality)
    super(name, sell_in, quality)
  end

  protected
  def changeQuality
    #I am so NiuBi, I never change
  end

  def changeDate
    #I am so NiuBi, I never change
  end
end