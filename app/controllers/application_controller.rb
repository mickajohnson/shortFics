class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  def require_login
    unless session[:id]
      redirect_to '/'
    else
      @user = User.find(session[:user_id]) if session[:user_id]
    end
  end
end
