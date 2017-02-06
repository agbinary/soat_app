class Admin::SoatsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @soats = Soat.paid.order(id: :desc)
  end

  def show
    @soat = Soat.find(params[:id])
  end
end
