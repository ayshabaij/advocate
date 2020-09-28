class SessionsController < ApplicationController
  def new
  end

  def create
    advocate = Advocate.find_by_email(params[:email])
    if advocate && advocate.authenticate(params[:password])
      session[:advocate_id] = advocate.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end
  def destroy
    session[:advocate_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

end
