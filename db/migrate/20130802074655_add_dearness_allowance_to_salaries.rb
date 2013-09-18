class AddDearnessAllowanceToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :dearness_allowance, :string
  end
end
