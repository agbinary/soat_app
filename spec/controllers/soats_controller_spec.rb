require 'rails_helper'

RSpec.describe SoatsController, type: :controller do
  describe "get new" do
    it "assigns a new @soat" do
      get :new
      expect(assigns(:soat)).to be_a_new(Soat)
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  before :each do
    @soat = create(:soat)
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
