require './aged_item.rb'

class TimeLimitItem < AgedItem
  def initialize (name, sell_in, quality, timeSlots)
    super(name, sell_in, quality)
    @timeSlots=timeSlots
    @justPast=true
  end

  protected
  def changeQuality
    super()
    if self.sell_in==0
      if !@justPast
        self.quality=0
      else
        @justPast=false
      end
    end
  end

  def alterChangeRate
    firstSmallerDay=(@timeSlots.keys.select { |day| self.sell_in <=day }).min
    firstSmallerRate = @timeSlots[firstSmallerDay]

    if firstSmallerRate
      self.changeRate=firstSmallerRate
    end
  end
end