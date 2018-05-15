json.extract! adress, :id, :street, :apartment, :description, :zipcode, :created_at, :updated_at
json.url adress_url(adress, format: :json)
