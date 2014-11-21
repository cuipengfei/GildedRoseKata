require './normal_item.rb'

class FastItem < NormalItem
  def initialize (name, sell_in, quality)
    super(name, sell_in, quality)
    self.changeRate = 2
  end
end