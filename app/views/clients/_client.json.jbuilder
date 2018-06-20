json.extract! client, :id, :name, :subdomain, :created_at, :updated_at
json.url client_url(client, format: :json)
