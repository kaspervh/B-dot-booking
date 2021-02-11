class Appointment < ApplicationRecord
  belongs_to :work_period

  def self.get_appointment_times(company, service_id)
    work_periods = get_usable_work_periods(company)
    service = Service.find(service_id)
    possible_appointment_times = []

    work_periods.each do |work_period|
      if work_period.appointments.any?
        new_appointment = []
        start_time = work_period.start_time
  
        work_period.appointments.each do |appointment|
          new_appointment.push(calculate_appointment_time(start_time, appointment.start_time, work_period, service.duration))
          start_time = appointment.end_time.to_time + 15.minutes
        end
        new_appointment.push(calculate_appointment_time(start_time, work_period.end_time. work_period, service.duration))
        possible_appointment_times.push(new_appointments.flatten)
      else
        work_period_appointments = []
        work_period_appointments.push(calculate_appointment_time(work_period.start_time, work_period.end_time, work_period, service.duration))
        possible_appointment_times.push(work_period_appointments)
      end

    end
    possible_appointment_times.flatten
    
  end

  def self.get_usable_work_periods(company)
    work_periods = []
    company.work_periods.each do |wp|
      work_periods.push(wp) if wp.start_time >= DateTime.now || wp.end_time >= DateTime.now
    end
    work_periods
  end

  def self.calculate_appointment_time(start_time, end_time, work_time, duration)
    new_appointments = []
    
    time_between_in_minutes = (end_time.to_time - start_time.to_time)/60
    
    (time_between_in_minutes / (duration.to_i + 15)).floor.times do
      
      new_appointments.push({work_period_id: work_time.id, start_time: start_time, end_time: start_time + duration.to_i.minutes}) 
      start_time = start_time + (duration.to_i + 15).minutes
    end
    new_appointments
  end
end
