class Subtype < ActiveRecord::Base
  has_many :contributions
  belongs_to :vehicle

  validates :vehicle_id, presence: true
end
