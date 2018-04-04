require 'controller'

describe Controller do

  subject(:controller) { described_class.new}

  let(:mars_rover) { MarsRover.new }
  let(:plateau)    { Plateau.new }

  describe 'checking and changing the #online state of an object' do

    it 'can question if an object is #online?' do
      expect(controller).to respond_to(:online?).with(1).argument
    end
  end

  describe 'landing objects' do

    it 'can land an object' do
      controller.land(mars_rover, plateau)
      expect(mars_rover.landed(plateau)).to eq(true)
    end
  end

  describe 'checking and changing the state of an objects camera' do

    it 'can respond to #toggle_recording' do
      expect(controller).to respond_to(:toggle_recording).with(1).argument
    end

    it 'can switch a vehicle recording on' do
      controller.toggle_recording(mars_rover)
      expect(mars_rover.recording).to eq(true)
    end

    it 'can switch a vehicle recording off' do
      controller.toggle_recording(mars_rover)
      controller.toggle_recording(mars_rover)
      expect(mars_rover.recording).to eq(false)
    end
  end

  describe 'managing a vehicle position' do

    it 'can question the position of an object' do
      expect(controller.vehicle_position(mars_rover)).to eq(mars_rover.current_position)
    end

    it 'can rotate a vehicle right' do
      start_position = controller.vehicle_position(mars_rover)
      expect(controller.rotate_right(mars_rover)).to_not eq(start_position)
    end
  end

  describe 'managing a navigation grid for a plateau' do

    it 'can check the maximum boundries of the grid' do
      expect(controller.check_location_bounds(plateau)).to eq(plateau.grid_size)
    end

    it 'can #add_navigation_grid' do
      controller.add_navigation_grid(plateau, 5, 5)
      expect(controller.check_location_bounds(plateau)).to eq("Maximum point on x-axis is 5.\nMaximum point on y-axis is 5.")
    end
  end
end
