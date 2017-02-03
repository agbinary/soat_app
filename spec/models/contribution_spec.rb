require 'rails_helper'

RSpec.describe Contribution, type: :model do
  it "has a valid factory" do
    expect(build(:contribution)).to be_valid
  end

  describe "ActiveModel validations" do
    it { should validate_presence_of(:subtype_id) }
    it { should validate_presence_of(:commercial_rate) }
    it { should validate_presence_of(:premium_value) }
    it { should validate_presence_of(:fosyga) }
    it { should validate_presence_of(:subtotal_premium_value_fosyga) }
    it { should validate_presence_of(:runt) }
    it { should validate_presence_of(:total_value) }
  end

  describe "ActiveRecord associations" do
    it { should belong_to(:subtype) }
  end
end
