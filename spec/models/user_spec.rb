require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  describe "ActiveModel validations" do
    it { should validate_presence_of(:identification_type) }
    it { should validate_presence_of(:identification_number) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:surname) }

    it do
      should define_enum_for(:identification_type).with([:citizenship_id, :foreigner_id, :passport_id])
    end
  end
end
