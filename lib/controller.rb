require_relative 'mars_rover'

class Controller

  def online?(vehicle)
    vehicle.online
  end

  def land(vehicle, location)
    vehicle.landed(location)
  end

  def toggle_recording(vehicle)
    vehicle.toggle_record
  end


  def add_navigation_grid(location, x_axis_max, y_axis_max)
    location.add_navigation_grid(x_axis_max, y_axis_max)
  end

  def check_location_bounds(location)
    location.grid_size
  end

  def vehicle_position(vehicle)
    vehicle.current_position
  end

  def rotate_right(vehicle)
    vehicle_position(vehicle)
  end
end
