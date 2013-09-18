class AddLoanToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :loan, :string
  end
end
