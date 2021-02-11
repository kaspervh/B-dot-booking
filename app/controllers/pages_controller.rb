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
    
    @work_periods = WorkPeriod.where(company_id: current_company.id).map{|wp| wp if wp.start_time >= DateTime.now}.reject{|element| !element.present?}

    @available_times = Appointment.get_appointment_times(current_company, params[:service_id])
  end

  def book_appointment
    @appointment = Appointment.new(work_period_id: params[:work_period_id], first_name: params[:first_name], last_name: params[:last_name], phone: params[:phone], email: params[:email], start_time: params[:start_time], end_time: params[:end_time])

    if @appointment.save
      redirect_to company_pages_thank_you_path(current_company)
    else
      redirect_to company_pages_pick_time_path(current_company)
    end
  end

  def thank_you

  end
end
