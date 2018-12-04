class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to index_url, notice: "Logged in!"
    else
      flash.now.notice = "Email or password is invalid"
      render "new"
    end
  end
  def new
  end
end
