class LeaveAccount < ActiveRecord::Base

  belongs_to :employee
  belongs_to :leave_type
end
