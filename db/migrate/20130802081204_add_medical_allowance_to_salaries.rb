class AddMedicalAllowanceToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :medical_allowance, :string
  end
end
