class Vehicle < ActiveRecord::Base
  scope :bring_if_exist, -> (license_plate) { where license_plate: license_plate }

  has_many :soats
  belongs_to :vehicle_class

  validates :license_plate, :vehicle_class_id, presence: true

  validates :license_plate, uniqueness: true

  validates :subtype, numericality: { less_than_or_equal_to: 30000, allow_blank: true }
  validates :age, numericality: { less_than_or_equal_to: 30000, allow_blank: true }

  validate :only_two_soats

  def return_soat
    self.soats.in_force(Date.today).paid
  end

  private

  def only_two_soats
    if self.return_soat.any? && self.soats.in_force(Date.today+1.year+1.day).paid.any?
      errors.add(:base, "Este vehiculo ya tiene dos soats relacionados")
    end
  end
end
