json.extract! user, :id, :name, :email, :permission, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
