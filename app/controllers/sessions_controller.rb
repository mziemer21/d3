class SessionsController < ApplicationController
  def create
    user = User.find_by_email(env["omniauth.auth"].info.email)
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end