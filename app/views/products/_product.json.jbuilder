json.extract! product, :id, :code, :description, :client_code, :innerpack, :ean13, :dun14, :aux_code, :location_id, :created_at, :updated_at
json.url product_url(product, format: :json)
