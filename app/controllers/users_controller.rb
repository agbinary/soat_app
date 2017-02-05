class UsersController < ApplicationController
  def instantiate_user
    user = User.bring_if_exist(params[:identification_type], params[:identification_number])
    if user.any?
      @user = user.first
    else
      @user = User.new
    end
  end
end
