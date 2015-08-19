class Dimension
  attr_reader :height, :length, :weight, :width, :express
  def initialize(args)
    @height = args[:height]
    @length = args[:length]
    @weight = args[:weight]
    @width = args[:width]
    @express = args[:express] || false
  end

  def volume
    height * length * width
  end

  def calculate_shipping
    express ? express_shipping : normal_shipping
  end

  def express_shipping
    cost = volume * (weight / Rate::EXPRESS_CONVERSION_FACTOR) * Rate::EXPRESS_RATE
    cost.round(2)
  end

  def normal_shipping
    cost = volume * (weight / Rate::NORMAL_CONVERSION_FACTOR) * Rate::NORMAL_RATE
    cost.round(2)
  end
end
