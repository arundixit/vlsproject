class PayslipController < ApplicationController
  def report
    @employees = Employee.all
    #@employees = Employee.find(params[:id])
    #@departments = Department.all
  end
end
