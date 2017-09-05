class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id]= @user.id
      redirect_to @user
    else
      #
    end
  end
end
