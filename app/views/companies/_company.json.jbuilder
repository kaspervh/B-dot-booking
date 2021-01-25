json.extract! company, :id, :user_id, :name, :cvr, :address, :zip_code, :city, :created_at, :updated_at
json.url company_url(company, format: :json)
