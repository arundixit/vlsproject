json.array!(@shifts) do |shift|
  json.extract! shift, :name, :from_time, :to_time
  json.url shift_url(shift, format: :json)
end
