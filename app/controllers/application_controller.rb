class ApplicationController < ActionController::Base
        include DeviseTokenAuth::Concerns::SetUserByToken

  helper_method :current_user

  def current_user
    if session[:advocate_id]
      @current_user ||= Advocate.find(session[:advocate_id])
    else
      @current_user = nil
    end
  end
end
