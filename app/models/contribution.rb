class Contribution < ActiveRecord::Base
  belongs_to :subtype
  
  validates :subtype_id, :commercial_rate, :premium_value, :fosyga,
            :subtotal_premium_value_fosyga, :runt, :total_value, presence: true
end
