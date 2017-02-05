require 'rails_helper'

RSpec.describe Subtype, type: :model do
  it "has a valid factory" do
    expect(build(:subtype)).to be_valid
  end

  describe "ActiveModel validations" do
    it { should validate_presence_of(:vehicle_class_id) }
  end

  describe "ActiveRecord associations" do
    it { should have_many(:contributions) }
    it { should belong_to(:vehicle_class) }
  end
end
