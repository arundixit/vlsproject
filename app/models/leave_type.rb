class LeaveType < ActiveRecord::Base
  has_many :leave_accounts
end
