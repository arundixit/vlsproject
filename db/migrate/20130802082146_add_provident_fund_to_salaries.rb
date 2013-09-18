class AddProvidentFundToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :provident_fund, :string
  end
end
