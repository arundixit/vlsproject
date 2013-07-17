json.array!(@salaries) do |salary|
  json.extract! salary, :name, :amount, :description
  json.url salary_url(salary, format: :json)
end
