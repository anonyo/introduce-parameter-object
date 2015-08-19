class NormalShipping
  attr_reader :volume, :weight

  def initialize(volume, weight)
    @volume = volume
    @weight = weight
  end

  def cost
    volume * (weight / Rate::NORMAL_CONVERSION_FACTOR) * Rate::NORMAL_RATE
  end

  def get_cost
    cost.round(2)
  end
end
