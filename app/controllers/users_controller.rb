class UsersController < ApplicationController

  def create
    @user = User.from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def sign_out
    session.clear
    redirect_to root_path
  end
end