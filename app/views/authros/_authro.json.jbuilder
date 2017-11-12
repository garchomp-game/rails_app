json.extract! authro, :id, :user_id, :name, :birth, :address, :ctype, :photo, :created_at, :updated_at
json.url authro_url(authro, format: :json)
