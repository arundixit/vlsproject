json.array!(@attendences) do |attendence|
  json.extract! attendence, :employee_id, :date_time, :attendence_status_id, :user_id
  json.url attendence_url(attendence, format: :json)
end
