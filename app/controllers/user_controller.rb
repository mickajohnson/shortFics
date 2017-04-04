class UserController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  def new
    if session[:id]
      redirect_to '/genres'
    end
  end

  def create
    user = User.new(name: params[:name])
    if user.valid?
      user.save
      session[:id] = user.id
      redirect_to '/genres'
    else
      flash[:errors] = user.errors.full_mesages
      redirect_to :back
    end
  end

  def logout
    session.clear
    redirect_to '/'
  end

  def settings
    @user = User.find(session[:id])
  end

end
