require 'rails_helper'

RSpec.describe VehiclesController, type: :controller do
  before do
    @vehicle = create(:vehicle)
  end

  describe "get instantiate_vehicle" do
    it "returns vehicle when exist" do
      xhr :get, 'instantiate_vehicle', license_plate: @vehicle.license_plate
      expect(assigns(:vehicle)).to eq @vehicle
    end
  end

  describe "get instantiate_vehicle" do
    it "returns new vehicle when not exist" do
      xhr :get, 'instantiate_vehicle', license_plate: 123

      expect(assigns(:vehicle)).to be_a_new(Vehicle)
    end
  end
end
