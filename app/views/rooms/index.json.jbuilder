json.array!(@rooms) do |room|
  json.extract! room, :id, :room_type, :address, :rent_per_month, :deposit, :available_from, :available_to, :picture, :description
  json.url room_url(room, format: :json)
end
