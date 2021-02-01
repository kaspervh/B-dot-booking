json.extract! appointment, :id, :work_period_id, :first_name, :last_name, :phone, :email, :start_time, :end_time, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
