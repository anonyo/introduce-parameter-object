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
    express ? express_shipping(volume, weight).get_cost : normal_shipping(volume, weight).get_cost
  end

  private

  def express_shipping(volume, weight)
    @express_shipping ||= ExpressShipping.new(volume, weight)
  end

  def normal_shipping(volume, weight)
    @normal_shipping ||= NormalShipping.new(volume, weight)
  end
end
