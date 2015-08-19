json.array!(@hires) do |hire|
  json.extract! hire, :id, :pk_date, :re_date, :client_id, :vehicle_id
  json.url hire_url(hire, format: :json)
end
