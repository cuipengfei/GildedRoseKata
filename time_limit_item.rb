require './aged_item.rb'

class TimeLimitItem < AgedItem
  def initialize (name, sell_in, quality, timeSlots)
    super(name, sell_in, quality)
    @timeSlots=timeSlots
  end

  protected
  def alterChangeRate
    firstSmallerDay=(@timeSlots.keys.select { |day| self.sell_in <=day }).min
    firstSmallerRate = @timeSlots[firstSmallerDay]

    if firstSmallerRate
      self.changeRate=firstSmallerRate
    end
  end
end