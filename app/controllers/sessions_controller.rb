class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(name: params[:session][:name], email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:message]= "That username or password is incorrect!"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
  
end
