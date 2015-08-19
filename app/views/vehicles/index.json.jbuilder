json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :name, :color
  json.url vehicle_url(vehicle, format: :json)
end
