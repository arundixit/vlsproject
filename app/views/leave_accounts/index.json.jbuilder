json.array!(@leave_accounts) do |leave_account|
  json.extract! leave_account, :employee_id, :leave_type_id, :count
  json.url leave_account_url(leave_account, format: :json)
end
