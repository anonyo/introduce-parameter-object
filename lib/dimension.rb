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
    shipping(volume, weight).get_cost
  end

  private

  def shipping(volume, weight)
    express ?
      ExpressShipping.new(volume, weight) :
      NormalShipping.new(volume, weight)
  end
end
