
class Plateau

  attr_accessor :number_of_landed_rovers, :x_axis_max, :y_axis_max

  def initialize
    @number_of_landed_rovers = 0
    @x_axis_max              = nil
    @y_axis_max              = nil
  end

  def grid_size
    "Maximum point on x-axis is #{x_axis_max}.\nMaximum point on y-axis is #{y_axis_max}."
  end

  def add_navigation_grid(x_axis_max, y_axis_max)
    set_x_axis_max(x_axis_max)
    set_y_axis_max(y_axis_max)
  end

  private

  def set_x_axis_max(x_axis_max)
    @x_axis_max = x_axis_max
  end

  def set_y_axis_max(y_axis_max)
    @y_axis_max = y_axis_max
  end

end
