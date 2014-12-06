class UsersController < ApplicationController

  def index
    session = SessionService.new.fetch_current_session
    @user = session[:user] if session.present?
  end

  def login
    @user = User.koala(request.env['omniauth.auth']['credentials'])
    SessionService.new.create_session(@user)
    redirect_to root_url
  end


  def logout
  	SessionService.new.destroy_session
  	redirect_to root_url 
  end

end