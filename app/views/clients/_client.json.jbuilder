json.extract! client, :id, :Name, :Address, :Current_weight, :Height, :Gender, :Email, :created_at, :updated_at
json.url client_url(client, format: :json)
