require 'rails_helper'

RSpec.describe Soat, type: :model do
  it "has a valid factory" do
    expect(build(:soat)).to be_valid
  end

  describe "ActiveModel validations" do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:vehicle_id) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:premium_value) }
    it { should validate_presence_of(:fosyga) }
    it { should validate_presence_of(:runt) }
    it { should validate_presence_of(:total_value) }
  end

  describe "ActiveRecord associations" do
    it { should belong_to(:vehicle) }
    it { should belong_to(:user) }
  end
end
