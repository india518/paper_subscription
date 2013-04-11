class SessionsController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    #params[:user][:name], params[:user][:password]
    if log_in(params[:user][:name], params[:user][:password])
      redirect_to user_url(current_user)
    else
      flash.now[:errors] = "User not found"
      render :new
    end
  end
  
  def destroy
    session[:remember_token] = nil
    redirect_to root_url
  end
end
