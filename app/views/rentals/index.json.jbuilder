json.array!(@rentals) do |rental|
  json.extract! rental, :id, :room_address, :lodger_name, :lease_start, :lease_end
  json.url rental_url(rental, format: :json)
end
