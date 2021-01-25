class ApplicationController < ActionController::Base

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def current_user?
    current_user != nil
  end
  helper_method :current_user?

  def current_company
    current_user.company
  end
  helper_method :current_company

  def current_company?
    current_company != nil
  end
  helper_method :current_company?

  def authorize
    redirect_to root_path unless current_user?
  end
  
end
