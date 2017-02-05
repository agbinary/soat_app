class Subtype < ActiveRecord::Base
  has_many :contributions
  belongs_to :vehicle_class

  validates :vehicle_class_id, presence: true
end
