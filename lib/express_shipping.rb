require 'shipping'
class ExpressShipping < Shipping
  def cost
    volume * (weight / Rate::EXPRESS_CONVERSION_FACTOR) * Rate::EXPRESS_RATE
  end
end
