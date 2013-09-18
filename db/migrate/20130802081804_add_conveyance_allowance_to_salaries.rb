class AddConveyanceAllowanceToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :conveyance_allowance, :string, :null => true
  end
end
