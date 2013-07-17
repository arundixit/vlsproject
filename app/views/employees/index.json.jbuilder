json.array!(@employees) do |employee|
  json.extract! employee, :name, :code, :department_id, :salary_id, :phone, :email, :address, :resume, :photo, :date_of_joining, :shift_id
  json.url employee_url(employee, format: :json)
end
