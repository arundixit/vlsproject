class Employee < ActiveRecord::Base

  belongs_to :department
  belongs_to :salary
  belongs_to :shift
  has_many :leave_accounts
  has_many :attendences

end
