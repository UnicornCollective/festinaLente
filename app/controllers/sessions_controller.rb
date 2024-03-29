class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by username: params[:username]

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_role]= user.role
      redirect_to root_path, notice: "Signed in!"
    else
      flash.now[:alert] = "Something is wrong with your username and/or password"
      render :new
    end
  end

  def delete
    session.delete :user_id
    session.delete :user_role
    session.delete :matter_id
    redirect_to root_path, notice: "Signed Out!"
  end


end