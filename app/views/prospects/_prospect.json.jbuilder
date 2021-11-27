json.extract! prospect, :id, :first_name, :last_name, :phone_number, :email, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)
