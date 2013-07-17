json.array!(@attendence_statuses) do |attendence_status|
  json.extract! attendence_status, :name
  json.url attendence_status_url(attendence_status, format: :json)
end
