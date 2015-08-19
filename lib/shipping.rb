class Shipping
  attr_reader :volume, :weight

  def initialize(volume, weight)
    @volume = volume
    @weight = weight
  end

  def get_cost
    cost.round(2)
  end
end
