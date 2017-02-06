require 'rails_helper'

RSpec.describe Admin::SoatsController, type: :controller do
  before :each do
    @admin = create(:admin)
    @soat = create(:soat)
    sign_in @admin
  end

  describe "get index" do
    it "should list soats" do
      @aditional_soat = create(:soat)
      get :index
      expect(assigns(:soats)).to match_array([@soat, @aditional_soat])
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "get show" do
    it "assigns the requested soat" do
      get :show, id: @soat
      expect(assigns(:soat)).to eq @soat
    end

    it "renders the :show template" do
      get :show, id: @soat
      expect(response).to render_template :show
    end
  end
end
