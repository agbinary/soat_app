require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before do
    @user = create(:user)
  end

  describe "get instantiate_user" do
    it "returns user when exist" do
      xhr :get, 'instantiate_user', identification_type: @user.identification_type,
                             identification_number: @user.identification_number
      expect(assigns(:user)).to eq @user
    end
  end

  describe "get instantiate_user" do
    it "returns new user when not exist" do
      xhr :get, 'instantiate_user', identification_type: 0,
                             identification_number: 123

      expect(assigns(:user)).to be_a_new(User)
    end
  end
end
