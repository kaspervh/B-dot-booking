class SessionController < ApplicationController
  def new
    @users = User.all
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if current_company.frontpage.present?
        redirect_to company_frontpage_path(current_company, current_company.frontpage)
      else
        redirect_to new_company_frontpage_path(current_company)
      end
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] == nil
    redirect_to root_path
  end
end
