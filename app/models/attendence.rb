class Attendence < ActiveRecord::Base
  belongs_to :employee
  belongs_to :attendence_status

end
