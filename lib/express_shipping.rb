class ExpressShipping
  attr_reader :volume, :weight

  def initialize(volume, weight)
    @volume = volume
    @weight = weight
  end

  def cost
    volume * (weight / Rate::EXPRESS_CONVERSION_FACTOR) * Rate::EXPRESS_RATE
  end

  def get_cost
    cost.round(2)
  end
end
