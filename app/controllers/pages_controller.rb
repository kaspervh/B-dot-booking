class PagesController < ApplicationController
  def services
    @services = current_company.services
  end

  def contact_info
    @services = current_company.services
    if params[:service_id].present?
      redirect_to company_pages_pick_time_path(current_company, service_id: params[:service_id], first_name: params[:first_name], last_name: params[:last_name], phone: params[:phone], email: params[:email])
    end
  end

  def pick_time
    @work_periods = Appointment.get_appointment_times(current_company, params[:service_id])
    puts @work_periods
  end

  def book_appointment

  end

  def thank_you

  end
end
