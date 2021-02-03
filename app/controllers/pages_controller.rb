class PagesController < ApplicationController
  def services
    @company = Company.find(params[:company_id])
    @services = @company.services
  end
end
