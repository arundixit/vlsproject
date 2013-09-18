class AddBasicSalaryToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :basic_salary, :string
  end
end
