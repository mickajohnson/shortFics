class UserController < ApplicationController
  def new
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


end
