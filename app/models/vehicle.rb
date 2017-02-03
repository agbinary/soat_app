class Vehicle < ActiveRecord::Base
  has_many :subtypes
  
  validates :description, presence: true
end
