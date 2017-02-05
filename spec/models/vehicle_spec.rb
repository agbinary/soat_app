require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  it "has a valid factory" do
    expect(build(:vehicle)).to be_valid
  end

  describe "ActiveModel validations" do
    it { should validate_presence_of(:license_plate) }
    it { should validate_presence_of(:vehicle_class_id) }
  end

  describe "ActiveRecord associations" do
    it { should have_many(:soats) }
    it { should belong_to(:vehicle_class) }
  end
end
