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
end
