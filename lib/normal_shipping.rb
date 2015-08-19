require 'shipping'
class NormalShipping < Shipping
  def cost
    volume * (weight / Rate::NORMAL_CONVERSION_FACTOR) * Rate::NORMAL_RATE
  end
end
