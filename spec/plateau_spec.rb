require 'plateau'

describe Plateau do

  subject(:plateau) { described_class.new }

  describe 'currently landed vehicle' do

    it 'can contain a vehicle' do
      controller   = Controller.new
      mars_rover   = MarsRover.new
      controller.land(mars_rover, plateau)
      expect(plateau.number_of_landed_rovers).to eq(1)
    end
  end

  describe 'navigational grid' do

    it 'returns a grid size' do
      expect(plateau.grid_size).to eq("Maximum point on x-axis is .\nMaximum point on y-axis is .")
    end
  end
end
