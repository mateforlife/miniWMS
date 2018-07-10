json.extract! pallet, :id, :reception_id, :pallet_number, :origin_qty, :reserved_qty, :available_qty, :exp_date, :batch, :status, :created_at, :updated_at
json.url pallet_url(pallet, format: :json)
