class UserController < ApplicationController
  before_action :redirect_unless_admin
  
  def index
    @users = User.all
  end

  def update
    # params[:user_id] => 3
    # params[:role] => 'admin'
    user = User.find(params[:user_id])
    user.update(role: params[:role])
    flash[:success] = "#{user.email} updated to role #{params[:role]}"
    redirect_back fallback_location: users_path
  end
end
