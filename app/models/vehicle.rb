class Vehicle < ActiveRecord::Base
  scope :bring_if_exist, -> (license_plate) { where license_plate: license_plate }

  has_many :soats
  belongs_to :vehicle_class

  validates :license_plate, :vehicle_class_id, presence: true

  validates :license_plate, uniqueness: true

  validates :subtype, numericality: { less_than_or_equal_to: 30000, allow_blank: true }
  validates :age, numericality: { less_than_or_equal_to: 30000, allow_blank: true }

  def return_soat
    self.soats.where(':today BETWEEN start_date and end_date', today: Date.today).where(pay: true)
  end
end
