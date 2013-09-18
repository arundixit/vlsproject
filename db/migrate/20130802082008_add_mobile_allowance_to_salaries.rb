class AddMobileAllowanceToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :mobile_allowance, :string,:null => true
  end
end
