class SoatsController < ApplicationController
  def new
    @soat = Soat.new
    @soat.user = User.new
    @soat.vehicle = Vehicle.new
  end

  def create
    #saving user
    @user = User.bring_if_exist(soat_params[:user][:identification_type], soat_params[:user][:identification_number])
    if @user.any?
      @user = @user.first
      exist_user = @user.update_attributes(soat_params[:user])
    else
      @user = User.new(soat_params[:user])
      exist_user = @user.save
    end

    #saving vehicle
    @vehicle = Vehicle.bring_if_exist(soat_params[:vehicle][:license_plate])
    if @vehicle.any?
      @vehicle = @vehicle.first
      exist_vehicle = @vehicle.update_attributes(soat_params[:vehicle])
    else
      @vehicle = Vehicle.new(soat_params[:vehicle])
      exist_vehicle = @vehicle.save
    end

    #saving soat
    if exist_vehicle && exist_user
      @soat = Soat.new(user_id: @user.id, vehicle_id: @vehicle.id)
      @soat.set_dates(@vehicle)
      @soat.calculate(@vehicle)
      @soat.save
    end

    respond_to { |format| format.js }
  end

  private

  def soat_params
    params.require(:soat).permit(user: [:identification_type, :identification_number, :name, :surname,
                                 :email, :phone_number], vehicle: [:license_plate, :vehicle_class_id,
                                 :subtype, :age])
  end
end
