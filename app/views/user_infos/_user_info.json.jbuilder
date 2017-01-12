json.extract! user_info, :id, :firstname, :lastname, :phone, :address, :city, :postel_code, :state, :image, :user_id, :created_at, :updated_at
json.url user_info_url(user_info, format: :json)