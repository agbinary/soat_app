class VehiclesController < ApplicationController
  def instantiate_vehicle
    vehicle = Vehicle.bring_if_exist(params[:license_plate])
    if vehicle.any?
      @vehicle = vehicle.first
    else
      @vehicle = Vehicle.new
    end
  end

  def subtype_by_vehicle_classes
    @vehicle_class = params[:vehicle_class].to_i
    @label_subtypes = VehicleClass.return_subtype(@vehicle_class)
    @ages = VehicleClass.if_age(@vehicle_class)
  end
end
