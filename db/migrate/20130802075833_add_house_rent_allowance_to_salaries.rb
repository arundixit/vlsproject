class AddHouseRentAllowanceToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :house_rent_allowance, :string
  end
end
