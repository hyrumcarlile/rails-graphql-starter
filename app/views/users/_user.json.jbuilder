json.extract! user, :id, :client_id, :name, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
