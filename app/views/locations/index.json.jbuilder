json.array!(@locations) do |location|
  json.extract! location, :address, :postal_code, :latitude, :longitude
  json.url location_url(location, format: :json)
end
