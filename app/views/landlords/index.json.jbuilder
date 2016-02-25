json.array!(@landlords) do |landlord|
  json.extract! landlord, :id, :name, :email, :phone, :reviews, :room_id
  json.url landlord_url(landlord, format: :json)
end
