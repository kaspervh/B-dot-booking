json.extract! frontpage, :id, :company_id, :main_image, :main_header, :about_image, :about_header, :about_text, :created_at, :updated_at
json.url frontpage_url(frontpage, format: :json)
