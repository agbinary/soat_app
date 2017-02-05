class VehicleClass < ActiveRecord::Base
  has_many :subtypes

  validates :description, presence: true

  private

  def self.return_subtype(vehicle_class)
    if vehicle_class == 3
      "Toneladas"
    elsif vehicle_class == 8
      ""
    elsif vehicle_class == 9
      "Pasajeros"
    else
      "Cilindraje"
    end
  end

  def self.if_age(vehicle_class)
    if vehicle_class == 2 || vehicle_class == 5 || vehicle_class == 6 || vehicle_class == 7
      true
    else
      false
    end
  end
end
